import 'package:flutter/material.dart';
import '../../../data/fake/fake_data.dart';

class GroceryScreen extends StatefulWidget {
  const GroceryScreen({super.key});

  @override
  State<GroceryScreen> createState() => _GroceryScreenState();
}

class _GroceryScreenState extends State<GroceryScreen> {
  String _filter = 'All';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Header with Create Button
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search grocery shares...',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    filled: true,
                    fillColor: Colors.grey[100],
                  ),
                ),
              ),
              SizedBox(width: 12),
              FloatingActionButton(
                onPressed: () => _showCreateShareDialog(context),
                child: Icon(Icons.add),
              ),
            ],
          ),
        ),

        // Filter Chips
        SizedBox(
          height: 50,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16),
            children: ['All', 'Expiring Soon', 'My Shares', 'Available'].map((
              filter,
            ) {
              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: FilterChip(
                  label: Text(filter),
                  selected: _filter == filter,
                  onSelected: (selected) {
                    setState(() => _filter = filter);
                  },
                  selectedColor: Theme.of(context).colorScheme.primary,
                  labelStyle: TextStyle(
                    color: _filter == filter ? Colors.white : Colors.black,
                  ),
                ),
              );
            }).toList(),
          ),
        ),

        SizedBox(height: 8),

        // Shares List
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.all(16),
            itemCount: FakeData.groceryShares.length,
            itemBuilder: (context, index) {
              final share = FakeData.groceryShares[index];
              return _buildShareCard(share);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildShareCard(dynamic share) {
    final spotsLeft = share.spotsAvailable - share.spotsTaken;
    final pricePerPortion = share.totalPrice / share.totalQuantity;
    final isExpiringSoon =
        share.expiryDate.difference(DateTime.now()).inHours < 24;

    return Card(
      margin: EdgeInsets.only(bottom: 16),
      child: InkWell(
        onTap: () => _showShareDetails(context, share),
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue[100],
                    child: Text(
                      share.creatorName[0],
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          share.creatorName,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          _formatTimeAgo(share.createdAt),
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  if (isExpiringSoon)
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.red[100],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.timer, size: 12, color: Colors.red[900]),
                          SizedBox(width: 4),
                          Text(
                            'EXPIRING SOON',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.red[900],
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),

              SizedBox(height: 16),

              // Item Name
              Text(
                share.itemName,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              if (share.description != null) ...[
                SizedBox(height: 8),
                Text(
                  share.description!,
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ],

              SizedBox(height: 16),

              // Price and Quantity Info
              Row(
                children: [
                  _buildInfoChip(
                    icon: Icons.euro,
                    label: '€${pricePerPortion.toStringAsFixed(2)}',
                    subtitle: 'per portion',
                    color: Colors.green,
                  ),
                  SizedBox(width: 12),
                  _buildInfoChip(
                    icon: Icons.people,
                    label: '$spotsLeft spots',
                    subtitle: 'available',
                    color: Colors.blue,
                  ),
                ],
              ),

              SizedBox(height: 12),

              // Pickup Location
              Row(
                children: [
                  Icon(Icons.location_on, size: 16, color: Colors.grey),
                  SizedBox(width: 4),
                  Text(
                    share.pickupLocation,
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  Spacer(),
                  Icon(Icons.access_time, size: 16, color: Colors.grey),
                  SizedBox(width: 4),
                  Text(
                    _formatTimeLeft(share.expiryDate),
                    style: TextStyle(
                      color: isExpiringSoon ? Colors.red : Colors.grey[700],
                      fontWeight: isExpiringSoon
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 16),

              // Progress Bar
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${share.spotsTaken}/${share.spotsAvailable} portions claimed',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '${((share.spotsTaken / share.spotsAvailable) * 100).toInt()}%',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  LinearProgressIndicator(
                    value: share.spotsTaken / share.spotsAvailable,
                    backgroundColor: Colors.grey[200],
                    valueColor: AlwaysStoppedAnimation<Color>(
                      spotsLeft > 2 ? Colors.green : Colors.orange,
                    ),
                    minHeight: 8,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ],
              ),

              SizedBox(height: 16),

              // Action Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: spotsLeft > 0 ? () => _joinShare(share) : null,
                  icon: Icon(Icons.shopping_basket),
                  label: Text(spotsLeft > 0 ? 'Join Share' : 'Fully Booked'),
                  style: ElevatedButton.styleFrom(padding: EdgeInsets.all(12)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoChip({
    required IconData icon,
    required String label,
    required String subtitle,
    required Color color,
  }) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: color.withOpacity(0.3)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, size: 16, color: color),
                SizedBox(width: 4),
                Text(
                  label,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: color,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 2),
            Text(
              subtitle,
              style: TextStyle(fontSize: 11, color: Colors.grey[700]),
            ),
          ],
        ),
      ),
    );
  }

  String _formatTimeAgo(DateTime time) {
    final diff = DateTime.now().difference(time);
    if (diff.inHours < 1) return '${diff.inMinutes}m ago';
    if (diff.inHours < 24) return '${diff.inHours}h ago';
    return '${diff.inDays}d ago';
  }

  String _formatTimeLeft(DateTime expiry) {
    final diff = expiry.difference(DateTime.now());
    if (diff.inHours < 24) return '${diff.inHours}h left';
    return '${diff.inDays}d left';
  }

  void _joinShare(dynamic share) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Join Share'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('You want to join:'),
            SizedBox(height: 8),
            Text(share.itemName, style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            Text(
              'Price per portion: €${(share.totalPrice / share.totalQuantity).toStringAsFixed(2)}',
            ),
            Text('Pickup: ${share.pickupLocation}'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Successfully joined the share!')),
              );
            },
            child: Text('Confirm'),
          ),
        ],
      ),
    );
  }

  void _showShareDetails(BuildContext context, dynamic share) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.7,
        maxChildSize: 0.9,
        minChildSize: 0.5,
        builder: (context, scrollController) => Container(
          padding: EdgeInsets.all(20),
          child: ListView(
            controller: scrollController,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      share.itemName,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
              SizedBox(height: 16),
              ListTile(
                leading: CircleAvatar(child: Text(share.creatorName[0])),
                title: Text(share.creatorName),
                subtitle: Text('Organizer'),
                contentPadding: EdgeInsets.zero,
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.location_on),
                title: Text('Pickup Location'),
                subtitle: Text(share.pickupLocation),
                contentPadding: EdgeInsets.zero,
              ),
              ListTile(
                leading: Icon(Icons.access_time),
                title: Text('Expires'),
                subtitle: Text(_formatTimeLeft(share.expiryDate)),
                contentPadding: EdgeInsets.zero,
              ),
              if (share.description != null) ...[
                SizedBox(height: 16),
                Text(
                  'Description',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(share.description!),
              ],
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  _joinShare(share);
                },
                child: Text('Join Share'),
                style: ElevatedButton.styleFrom(padding: EdgeInsets.all(16)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showCreateShareDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Create Grocery Share'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(decoration: InputDecoration(labelText: 'Item Name')),
              TextField(
                decoration: InputDecoration(labelText: 'Total Price (€)'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Total Quantity'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Pickup Location'),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Description (optional)',
                ),
                maxLines: 3,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Share created successfully!')),
              );
            },
            child: Text('Create'),
          ),
        ],
      ),
    );
  }
}
