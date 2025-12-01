import 'package:flutter/material.dart';
import '../../../data/fake/fake_data.dart';
import 'package:intl/intl.dart';

class EventsScreen extends StatefulWidget {
  const EventsScreen({super.key});

  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
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
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search events...',
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
                onPressed: () => _showCreateEventDialog(context),
                child: Icon(Icons.add),
              ),
            ],
          ),
        ),

        TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Upcoming'),
            Tab(text: 'My Events'),
            Tab(text: 'Past'),
          ],
        ),

        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              _buildEventsList(FakeData.events),
              _buildEventsList(FakeData.events.take(1).toList()),
              _buildEventsList([]),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildEventsList(List<dynamic> events) {
    if (events.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.event_busy, size: 64, color: Colors.grey),
            SizedBox(height: 16),
            Text(
              'No events found',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: EdgeInsets.all(16),
      itemCount: events.length,
      itemBuilder: (context, index) {
        final event = events[index];
        return _buildEventCard(event);
      },
    );
  }

  Widget _buildEventCard(dynamic event) {
    final isFull = event.currentAttendees >= event.maxAttendees;

    return Card(
      margin: EdgeInsets.only(bottom: 16),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () => _showEventDetails(context, event),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image placeholder with category overlay
            Container(
              height: 140,
              color: _getCategoryColor(event.category).withOpacity(0.3),
              child: Stack(
                children: [
                  Center(
                    child: Icon(
                      _getCategoryIcon(event.category),
                      size: 50,
                      color: _getCategoryColor(event.category),
                    ),
                  ),
                  Positioned(
                    top: 12,
                    left: 12,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: _getCategoryColor(event.category),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        event.category.name.toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  if (isFull)
                    Positioned(
                      top: 12,
                      right: 12,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          'FULL',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(
                    event.title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 12),

                  // Organizer
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.blue[100],
                        child: Text(
                          event.organizerName[0],
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.blue[900],
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        'by ${event.organizerName}',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),

                  // Date & Time
                  Row(
                    children: [
                      Icon(Icons.calendar_today, size: 16, color: Colors.grey),
                      SizedBox(width: 8),
                      Text(
                        DateFormat('MMM dd, yyyy').format(event.startTime),
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      SizedBox(width: 16),
                      Icon(Icons.access_time, size: 16, color: Colors.grey),
                      SizedBox(width: 8),
                      Text(
                        DateFormat('HH:mm').format(event.startTime),
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),

                  // Location
                  Row(
                    children: [
                      Icon(Icons.location_on, size: 16, color: Colors.grey),
                      SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          event.location,
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),

                  // Attendees Progress
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${event.currentAttendees}/${event.maxAttendees} attending',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '${((event.currentAttendees / event.maxAttendees) * 100).toInt()}%',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            LinearProgressIndicator(
                              value:
                                  event.currentAttendees / event.maxAttendees,
                              backgroundColor: Colors.grey[200],
                              valueColor: AlwaysStoppedAnimation<Color>(
                                isFull ? Colors.red : Colors.blue,
                              ),
                              minHeight: 8,
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),

                  // Action Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: isFull ? null : () => _rsvpEvent(event),
                      icon: Icon(Icons.event_available),
                      label: Text(isFull ? 'Event Full' : 'RSVP'),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(12),
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
  }

  Color _getCategoryColor(dynamic category) {
    switch (category.toString()) {
      case 'EventCategory.study':
        return Colors.blue;
      case 'EventCategory.party':
        return Colors.purple;
      case 'EventCategory.sports':
        return Colors.green;
      case 'EventCategory.food':
        return Colors.orange;
      case 'EventCategory.culture':
        return Colors.pink;
      case 'EventCategory.gaming':
        return Colors.indigo;
      default:
        return Colors.grey;
    }
  }

  IconData _getCategoryIcon(dynamic category) {
    switch (category.toString()) {
      case 'EventCategory.study':
        return Icons.menu_book;
      case 'EventCategory.party':
        return Icons.celebration;
      case 'EventCategory.sports':
        return Icons.sports_soccer;
      case 'EventCategory.food':
        return Icons.restaurant;
      case 'EventCategory.culture':
        return Icons.theater_comedy;
      case 'EventCategory.gaming':
        return Icons.sports_esports;
      default:
        return Icons.event;
    }
  }

  void _rsvpEvent(dynamic event) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('RSVP to Event'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Confirm your attendance:'),
            SizedBox(height: 16),
            Text(event.title, style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('${DateFormat('MMM dd, HH:mm').format(event.startTime)}'),
            Text(event.location),
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
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('Successfully RSVP\'d!')));
            },
            child: Text('Confirm'),
          ),
        ],
      ),
    );
  }

  void _showEventDetails(BuildContext context, dynamic event) {
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
                      event.title,
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
                leading: CircleAvatar(child: Text(event.organizerName[0])),
                title: Text(event.organizerName),
                subtitle: Text('Organizer'),
                contentPadding: EdgeInsets.zero,
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.calendar_today),
                title: Text('Date & Time'),
                subtitle: Text(
                  '${DateFormat('EEEE, MMM dd, yyyy').format(event.startTime)}\n${DateFormat('HH:mm').format(event.startTime)}',
                ),
                contentPadding: EdgeInsets.zero,
              ),
              ListTile(
                leading: Icon(Icons.location_on),
                title: Text('Location'),
                subtitle: Text(event.location),
                contentPadding: EdgeInsets.zero,
              ),
              ListTile(
                leading: Icon(Icons.people),
                title: Text('Attendees'),
                subtitle: Text(
                  '${event.currentAttendees} / ${event.maxAttendees}',
                ),
                contentPadding: EdgeInsets.zero,
              ),
              if (event.description != null) ...[
                SizedBox(height: 16),
                Text(
                  'Description',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 8),
                Text(event.description!),
              ],
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  _rsvpEvent(event);
                },
                child: Text('RSVP to Event'),
                style: ElevatedButton.styleFrom(padding: EdgeInsets.all(16)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showCreateEventDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Create Event'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(decoration: InputDecoration(labelText: 'Event Title')),
              TextField(decoration: InputDecoration(labelText: 'Location')),
              TextField(
                decoration: InputDecoration(labelText: 'Max Attendees'),
                keyboardType: TextInputType.number,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Description'),
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
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('Event created!')));
            },
            child: Text('Create'),
          ),
        ],
      ),
    );
  }
}
