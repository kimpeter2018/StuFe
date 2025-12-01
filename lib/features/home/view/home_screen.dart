import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/fake/fake_data.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return RefreshIndicator(
      onRefresh: () async {
        await Future.delayed(Duration(seconds: 1));
      },
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Welcome Section
          _buildWelcomeSection(),

          const SizedBox(height: 24),

          // Quick Stats
          _buildQuickStats(),

          const SizedBox(height: 24),

          // Upcoming Events Preview
          _buildSectionHeader('Upcoming Events', Icons.event, () {}),
          const SizedBox(height: 12),
          _buildUpcomingEvents(),

          const SizedBox(height: 24),

          // Active Grocery Shares
          _buildSectionHeader('Grocery Shares', Icons.shopping_basket, () {}),
          const SizedBox(height: 12),
          _buildGroceryShares(),

          const SizedBox(height: 24),

          // Popular Restaurants
          _buildSectionHeader('Popular Near You', Icons.restaurant, () {}),
          const SizedBox(height: 12),
          _buildRestaurants(),

          const SizedBox(height: 24),

          // Recent Marketplace Items
          _buildSectionHeader('Marketplace', Icons.store, () {}),
          const SizedBox(height: 12),
          _buildMarketplaceItems(),

          const SizedBox(height: 100),
        ],
      ),
    );
  }

  Widget _buildWelcomeSection() {
    final hour = DateTime.now().hour;
    String greeting = hour < 12
        ? 'Good Morning'
        : hour < 18
        ? 'Good Afternoon'
        : 'Good Evening';

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF667eea), Color(0xFF764ba2)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(greeting, style: TextStyle(color: Colors.white70, fontSize: 14)),
          const SizedBox(height: 4),
          Text(
            'Welcome back, Student!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'You have 2 events this week and 3 active shares',
            style: TextStyle(color: Colors.white70, fontSize: 13),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickStats() {
    return Row(
      children: [
        Expanded(
          child: _buildStatCard('23', 'Events', Icons.event, Colors.blue),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _buildStatCard(
            '5',
            'Shares',
            Icons.shopping_basket,
            Colors.green,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _buildStatCard('12', 'Listings', Icons.store, Colors.orange),
        ),
      ],
    );
  }

  Widget _buildStatCard(
    String value,
    String label,
    IconData icon,
    Color color,
  ) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Column(
        children: [
          Icon(icon, color: color, size: 28),
          const SizedBox(height: 8),
          Text(
            value,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          Text(label, style: TextStyle(fontSize: 12, color: Colors.grey[700])),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title, IconData icon, VoidCallback onTap) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(icon, size: 20),
            const SizedBox(width: 8),
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        TextButton(onPressed: onTap, child: Text('View All')),
      ],
    );
  }

  Widget _buildUpcomingEvents() {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: FakeData.events.take(3).length,
        itemBuilder: (context, index) {
          final event = FakeData.events[index];
          return Container(
            width: 280,
            margin: EdgeInsets.only(right: 12),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: _getCategoryColor(event.category),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            event.category.name.toUpperCase(),
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.people, size: 14, color: Colors.grey),
                        SizedBox(width: 4),
                        Text(
                          '${event.currentAttendees}/${event.maxAttendees}',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      event.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(Icons.access_time, size: 12, color: Colors.grey),
                        SizedBox(width: 4),
                        Text(
                          _formatEventTime(event.startTime),
                          style: TextStyle(fontSize: 11, color: Colors.grey),
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(Icons.location_on, size: 12, color: Colors.grey),
                        SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            event.location,
                            style: TextStyle(fontSize: 11, color: Colors.grey),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildGroceryShares() {
    return Column(
      children: FakeData.groceryShares.take(2).map((share) {
        return Card(
          margin: EdgeInsets.only(bottom: 12),
          child: ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(Icons.shopping_basket, color: Colors.green[700]),
            ),
            title: Text(
              share.itemName,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 4),
                Text(
                  '€${(share.totalPrice / share.totalQuantity).toStringAsFixed(2)} per portion',
                ),
                Text('by ${share.creatorName}'),
              ],
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${share.spotsAvailable - share.spotsTaken} left',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green[700],
                  ),
                ),
                Text(
                  _formatTimeLeft(share.expiryDate),
                  style: TextStyle(fontSize: 11, color: Colors.grey),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildRestaurants() {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: FakeData.restaurants.length,
        itemBuilder: (context, index) {
          final restaurant = FakeData.restaurants[index];
          return Container(
            width: 200,
            margin: EdgeInsets.only(right: 12),
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    color: Colors.grey[300],
                    child: Center(
                      child: Icon(
                        Icons.restaurant,
                        size: 40,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          restaurant.name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Icon(Icons.star, size: 14, color: Colors.amber),
                            SizedBox(width: 4),
                            Text(
                              '${restaurant.rating} (${restaurant.reviewCount})',
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        if (restaurant.studentDiscount != null)
                          Container(
                            margin: EdgeInsets.only(top: 6),
                            padding: EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.green[100],
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              '🎓 Student Discount',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.green[900],
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildMarketplaceItems() {
    return Column(
      children: FakeData.listings.take(2).map((listing) {
        return Card(
          margin: EdgeInsets.only(bottom: 12),
          child: ListTile(
            leading: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                _getCategoryIcon(listing.category),
                color: Colors.grey[600],
              ),
            ),
            title: Text(
              listing.title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              '€${listing.price.toStringAsFixed(2)} • ${listing.sellerName}',
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    listing.condition.name.replaceAll('_', ' ').toUpperCase(),
                    style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }

  Color _getCategoryColor(dynamic category) {
    switch (category.toString()) {
      case 'EventCategory.study':
        return Colors.blue;
      case 'EventCategory.party':
        return Colors.purple;
      case 'EventCategory.sports':
        return Colors.green;
      default:
        return Colors.grey;
    }
  }

  IconData _getCategoryIcon(dynamic category) {
    switch (category.toString()) {
      case 'ListingCategory.books':
        return Icons.book;
      case 'ListingCategory.electronics':
        return Icons.laptop;
      case 'ListingCategory.furniture':
        return Icons.chair;
      default:
        return Icons.category;
    }
  }

  String _formatEventTime(DateTime time) {
    final now = DateTime.now();
    final diff = time.difference(now);

    if (diff.inDays == 0)
      return 'Today ${time.hour}:${time.minute.toString().padLeft(2, '0')}';
    if (diff.inDays == 1) return 'Tomorrow';
    return '${diff.inDays}d away';
  }

  String _formatTimeLeft(DateTime expiry) {
    final diff = expiry.difference(DateTime.now());
    if (diff.inHours < 24) return '${diff.inHours}h left';
    return '${diff.inDays}d left';
  }
}
