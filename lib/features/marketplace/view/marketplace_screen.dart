import 'package:flutter/material.dart';
import '../../../data/fake/fake_data.dart';

class MarketplaceScreen extends StatefulWidget {
  const MarketplaceScreen({super.key});

  @override
  State<MarketplaceScreen> createState() => _MarketplaceScreenState();
}

class _MarketplaceScreenState extends State<MarketplaceScreen> {
  String _selectedCategory = 'All';
  final List<String> _categories = [
    'All',
    'Books',
    'Electronics',
    'Furniture',
    'Clothing',
    'Sports',
    'Other',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search marketplace...',
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.tune),
                      onPressed: () {},
                    ),
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
                onPressed: () => _showCreateListingDialog(context),
                child: Icon(Icons.add),
              ),
            ],
          ),
        ),

        SizedBox(
          height: 50,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16),
            itemCount: _categories.length,
            itemBuilder: (context, index) {
              final category = _categories[index];
              final isSelected = _selectedCategory == category;
              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: FilterChip(
                  label: Text(category),
                  selected: isSelected,
                  onSelected: (selected) {
                    setState(() => _selectedCategory = category);
                  },
                  selectedColor: Theme.of(context).colorScheme.primary,
                  labelStyle: TextStyle(
                    color: isSelected ? Colors.white : Colors.black,
                  ),
                ),
              );
            },
          ),
        ),

        SizedBox(height: 8),

        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.all(16),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
            itemCount: FakeData.listings.length,
            itemBuilder: (context, index) {
              final listing = FakeData.listings[index];
              return _buildListingCard(listing);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildListingCard(dynamic listing) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () => _showListingDetails(context, listing),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              color: Colors.grey[200],
              child: Stack(
                children: [
                  Center(
                    child: Icon(
                      _getCategoryIcon(listing.category),
                      size: 40,
                      color: Colors.grey[600],
                    ),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: _getConditionColor(listing.condition),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        _formatCondition(listing.condition),
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      listing.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 4),
                    Text(
                      '€${listing.price.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.green[700],
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(Icons.location_on, size: 12, color: Colors.grey),
                        SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            listing.location,
                            style: TextStyle(fontSize: 11, color: Colors.grey),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(Icons.visibility, size: 12, color: Colors.grey),
                        SizedBox(width: 4),
                        Text(
                          '${listing.viewCount ?? 0} views',
                          style: TextStyle(fontSize: 11, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  IconData _getCategoryIcon(dynamic category) {
    switch (category.toString()) {
      case 'ListingCategory.books':
        return Icons.menu_book;
      case 'ListingCategory.electronics':
        return Icons.laptop_mac;
      case 'ListingCategory.furniture':
        return Icons.chair;
      case 'ListingCategory.clothing':
        return Icons.checkroom;
      case 'ListingCategory.sports':
        return Icons.sports_basketball;
      default:
        return Icons.category;
    }
  }

  Color _getConditionColor(dynamic condition) {
    switch (condition.toString()) {
      case 'ListingCondition.new_item':
        return Colors.green;
      case 'ListingCondition.like_new':
        return Colors.blue;
      case 'ListingCondition.good':
        return Colors.orange;
      case 'ListingCondition.fair':
        return Colors.deepOrange;
      case 'ListingCondition.poor':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  String _formatCondition(dynamic condition) {
    return condition
        .toString()
        .split('.')
        .last
        .replaceAll('_', ' ')
        .toUpperCase();
  }

  void _showListingDetails(BuildContext context, dynamic listing) {
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
                      listing.title,
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
              Container(
                height: 200,
                color: Colors.grey[200],
                child: Center(
                  child: Icon(
                    _getCategoryIcon(listing.category),
                    size: 80,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '€${listing.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[700],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: _getConditionColor(
                        listing.condition,
                      ).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: _getConditionColor(listing.condition),
                      ),
                    ),
                    child: Text(
                      _formatCondition(listing.condition),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: _getConditionColor(listing.condition),
                      ),
                    ),
                  ),
                ],
              ),
              Divider(height: 32),
              Text(
                'Description',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(listing.description),
              SizedBox(height: 16),
              ListTile(
                leading: CircleAvatar(child: Text(listing.sellerName[0])),
                title: Text(listing.sellerName),
                subtitle: Text('Seller'),
                contentPadding: EdgeInsets.zero,
              ),
              ListTile(
                leading: Icon(Icons.location_on),
                title: Text('Location'),
                subtitle: Text(listing.location),
                contentPadding: EdgeInsets.zero,
              ),
              ListTile(
                leading: Icon(Icons.visibility),
                title: Text('Views'),
                subtitle: Text('${listing.viewCount ?? 0} people viewed this'),
                contentPadding: EdgeInsets.zero,
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Contact seller feature coming soon!'),
                    ),
                  );
                },
                icon: Icon(Icons.message),
                label: Text('Contact Seller'),
                style: ElevatedButton.styleFrom(padding: EdgeInsets.all(16)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showCreateListingDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Create Listing'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(decoration: InputDecoration(labelText: 'Title')),
              TextField(
                decoration: InputDecoration(labelText: 'Price (€)'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Description'),
                maxLines: 3,
              ),
              TextField(decoration: InputDecoration(labelText: 'Location')),
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
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('Listing created!')));
            },
            child: Text('Create'),
          ),
        ],
      ),
    );
  }
}
