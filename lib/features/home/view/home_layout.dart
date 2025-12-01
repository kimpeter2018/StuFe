// lib/features/home/view/home_layout_new.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stufe/features/home/view/home_screen.dart';
import '../../../features/food/view/food_screen.dart';
import '../../../features/grocery/view/grocery_screen.dart';
import '../../../features/events/view/events_screen.dart';
import '../../../features/marketplace/view/marketplace_screen.dart';
import '../../../features/timetable/view/timetable_screen.dart';
import '../../../features/settings/view/settings_screen.dart';

class HomeLayout extends ConsumerStatefulWidget {
  const HomeLayout({super.key});
  static const routeName = '/home-new';

  @override
  ConsumerState<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends ConsumerState<HomeLayout> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = [
    HomeScreen(),
    FoodScreen(),
    GroceryScreen(),
    EventsScreen(),
    MarketplaceScreen(),
    TimetableScreen(),
    SettingsPage(),
  ];

  static const List<String> _titles = [
    'Home',
    'Food',
    'Grocery Shares',
    'Events',
    'Marketplace',
    'Timetable',
    'Settings',
  ];

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.school, color: Theme.of(context).colorScheme.primary),
            SizedBox(width: 8),
            Text(
              _titles[_selectedIndex],
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_outlined),
            onPressed: () {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('No new notifications')));
            },
          ),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          selectedItemColor: Theme.of(context).colorScheme.primary,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 11,
          unselectedFontSize: 11,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.restaurant_rounded),
              label: 'Food',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket_rounded),
              label: 'Grocery',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.event_rounded),
              label: 'Events',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.store_rounded),
              label: 'Market',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_rounded),
              label: 'Timetable',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
