import 'package:flutter/material.dart';
import '../../../data/fake/fake_data.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({super.key});

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  String _selectedCuisine = 'All';
  final List<String> _cuisines = [
    'All',
    'Italian',
    'Asian',
    'American',
    'German',
    'Mexican',
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Search Bar
        Padding(
          padding: const EdgeInsets.all(16),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search restaurants...',
              prefixIcon: Icon(Icons.search),
              suffixIcon: IconButton(
                icon: Icon(Icons.tune),
                onPressed: () => _showFilterSheet(context),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              filled: true,
              fillColor: Colors.grey[100],
            ),
          ),
        ),

        // Cuisine Filter Chips
        SizedBox(
          height: 50,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16),
            itemCount: _cuisines.length,
            itemBuilder: (context, index) {
              final cuisine = _cuisines[index];
              final isSelected = _selectedCuisine == cuisine;
              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: FilterChip(
                  label: Text(cuisine),
                  selected: isSelected,
                  onSelected: (selected) {
                    setState(() => _selectedCuisine = cuisine);
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

        // Tab Bar
        TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Restaurants'),
            Tab(text: 'Student Discounts'),
          ],
        ),

        // Tab Views
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [_buildRestaurantsList(), _buildDiscountsList()],
          ),
        ),
      ],
    );
  }

  Widget _buildRestaurantsList() {
    return ListView.builder(
      padding: EdgeInsets.all(16),
      itemCount: FakeData.restaurants.length,
      itemBuilder: (context, index) {
        final restaurant = FakeData.restaurants[index];
        return Card(
          margin: EdgeInsets.only(bottom: 16),
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: () => _showRestaurantDetails(context, restaurant),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image
                Container(
                  height: 150,
                  color: Colors.grey[300],
                  child: Stack(
                    children: [
                      Center(
                        child: Icon(
                          Icons.restaurant_menu,
                          size: 60,
                          color: Colors.grey[500],
                        ),
                      ),
                      if (restaurant.studentDiscount != null)
                        Positioned(
                          top: 12,
                          right: 12,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.school,
                                  size: 14,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  'STUDENT DISCOUNT',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ),

                // Details
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              restaurant.name,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              restaurant.priceRange,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        restaurant.cuisine,
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.star, size: 18, color: Colors.amber),
                          SizedBox(width: 4),
                          Text(
                            '${restaurant.rating}',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(' (${restaurant.reviewCount} reviews)'),
                          Spacer(),
                          Icon(Icons.location_on, size: 16, color: Colors.grey),
                          SizedBox(width: 4),
                          Text('${restaurant.distanceKm} km'),
                        ],
                      ),
                      if (restaurant.studentDiscount != null) ...[
                        SizedBox(height: 12),
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.green[50],
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.green[200]!),
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.local_offer,
                                size: 16,
                                color: Colors.green[700],
                              ),
                              SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  restaurant.studentDiscount!,
                                  style: TextStyle(
                                    color: Colors.green[900],
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildDiscountsList() {
    final discountRestaurants = FakeData.restaurants
        .where((r) => r.studentDiscount != null)
        .toList();

    return ListView.builder(
      padding: EdgeInsets.all(16),
      itemCount: discountRestaurants.length,
      itemBuilder: (context, index) {
        final restaurant = discountRestaurants[index];
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
              child: Icon(Icons.restaurant, color: Colors.green[700]),
            ),
            title: Text(
              restaurant.name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 4),
                Text(restaurant.studentDiscount!),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.star, size: 14, color: Colors.amber),
                    SizedBox(width: 4),
                    Text('${restaurant.rating}'),
                    SizedBox(width: 12),
                    Icon(Icons.location_on, size: 14, color: Colors.grey),
                    SizedBox(width: 4),
                    Text('${restaurant.distanceKm} km'),
                  ],
                ),
              ],
            ),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () => _showRestaurantDetails(context, restaurant),
          ),
        );
      },
    );
  }

  void _showFilterSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Filters',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text('Price Range'),
            SizedBox(height: 8),
            Wrap(
              spacing: 8,
              children: ['€', '€€', '€€€'].map((price) {
                return FilterChip(
                  label: Text(price),
                  onSelected: (selected) {},
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            SwitchListTile(
              title: Text('Student Discounts Only'),
              value: false,
              onChanged: (value) {},
            ),
            SwitchListTile(
              title: Text('Open Now'),
              value: false,
              onChanged: (value) {},
            ),
          ],
        ),
      ),
    );
  }

  void _showRestaurantDetails(BuildContext context, dynamic restaurant) {
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
                      restaurant.name,
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
              if (restaurant.description != null) Text(restaurant.description!),
              SizedBox(height: 16),
              ListTile(
                leading: Icon(Icons.location_on),
                title: Text(restaurant.address),
                contentPadding: EdgeInsets.zero,
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text(
                  '${restaurant.rating} ★ (${restaurant.reviewCount} reviews)',
                ),
                contentPadding: EdgeInsets.zero,
              ),
              if (restaurant.tags != null) ...[
                SizedBox(height: 12),
                Wrap(
                  spacing: 8,
                  children: restaurant.tags!.map<Widget>((tag) {
                    return Chip(
                      label: Text(tag, style: TextStyle(fontSize: 12)),
                      visualDensity: VisualDensity.compact,
                    );
                  }).toList(),
                ),
              ],
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.directions),
                label: Text('Get Directions'),
                style: ElevatedButton.styleFrom(padding: EdgeInsets.all(16)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
