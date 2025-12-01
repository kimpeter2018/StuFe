import 'package:flutter/material.dart';
import '../../../data/fake/fake_data.dart';

class TimetableScreen extends StatefulWidget {
  const TimetableScreen({super.key});

  @override
  State<TimetableScreen> createState() => _TimetableScreenState();
}

class _TimetableScreenState extends State<TimetableScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<String> _weekDays = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri'];

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
        TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Timetable'),
            Tab(text: 'Courses'),
          ],
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [_buildTimetableView(), _buildCoursesView()],
          ),
        ),
      ],
    );
  }

  Widget _buildTimetableView() {
    return Column(
      children: [
        // Week selector
        Container(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(icon: Icon(Icons.chevron_left), onPressed: () {}),
              Text(
                'Week 1-7 Dec 2025',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              IconButton(icon: Icon(Icons.chevron_right), onPressed: () {}),
            ],
          ),
        ),

        // Day selector
        SizedBox(
          height: 60,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16),
            itemCount: _weekDays.length,
            itemBuilder: (context, index) {
              final isToday = index == DateTime.now().weekday - 1;
              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    width: 60,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: isToday
                          ? Theme.of(context).colorScheme.primary
                          : Colors.grey[200],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          _weekDays[index],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: isToday ? Colors.white : Colors.black,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '${index + 2}',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: isToday ? Colors.white : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),

        SizedBox(height: 16),

        // Timeline view
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 16),
            itemCount: FakeData.courses.length,
            itemBuilder: (context, index) {
              final course = FakeData.courses[index];
              return _buildCourseTimeBlock(course);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildCourseTimeBlock(dynamic course) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Time
          SizedBox(
            width: 60,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  course.startTime,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Text(
                  course.endTime,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
          SizedBox(width: 12),

          // Course card
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(
                  int.parse(course.color!.substring(1), radix: 16) + 0xFF000000,
                ).withOpacity(0.1),
                border: Border(
                  left: BorderSide(
                    color: Color(
                      int.parse(course.color!.substring(1), radix: 16) +
                          0xFF000000,
                    ),
                    width: 4,
                  ),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          course.code,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Color(
                              int.parse(course.color!.substring(1), radix: 16) +
                                  0xFF000000,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          '${course.credits} CR',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text(
                    course.name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.person, size: 14, color: Colors.grey),
                      SizedBox(width: 4),
                      Expanded(
                        child: Text(
                          course.instructor,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.location_on, size: 14, color: Colors.grey),
                      SizedBox(width: 4),
                      Text(
                        course.location,
                        style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCoursesView() {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'My Courses',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            IconButton(icon: Icon(Icons.add), onPressed: () {}),
          ],
        ),
        SizedBox(height: 16),
        ...FakeData.courses.map((course) => _buildCourseCard(course)).toList(),
      ],
    );
  }

  Widget _buildCourseCard(dynamic course) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      child: InkWell(
        onTap: () => _showCourseDetails(context, course),
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 4,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(
                        int.parse(course.color!.substring(1), radix: 16) +
                            0xFF000000,
                      ),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          course.code,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(
                              int.parse(course.color!.substring(1), radix: 16) +
                                  0xFF000000,
                            ),
                          ),
                        ),
                        Text(
                          course.name,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      '${course.credits} Credits',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Icon(Icons.person, size: 14, color: Colors.grey),
                  SizedBox(width: 4),
                  Text(
                    course.instructor,
                    style: TextStyle(fontSize: 13, color: Colors.grey[700]),
                  ),
                ],
              ),
              SizedBox(height: 6),
              Row(
                children: [
                  Icon(Icons.schedule, size: 14, color: Colors.grey),
                  SizedBox(width: 4),
                  Text(
                    '${_formatWeekDay(course.weekDay)}, ${course.startTime} - ${course.endTime}',
                    style: TextStyle(fontSize: 13, color: Colors.grey[700]),
                  ),
                ],
              ),
              SizedBox(height: 6),
              Row(
                children: [
                  Icon(Icons.location_on, size: 14, color: Colors.grey),
                  SizedBox(width: 4),
                  Text(
                    course.location,
                    style: TextStyle(fontSize: 13, color: Colors.grey[700]),
                  ),
                ],
              ),
              if (course.averageRating != null) ...[
                SizedBox(height: 12),
                Row(
                  children: [
                    Icon(Icons.star, size: 16, color: Colors.amber),
                    SizedBox(width: 4),
                    Text(
                      '${course.averageRating} / 5.0',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 8),
                    TextButton(
                      onPressed: () => _showCourseReviews(context, course),
                      child: Text('View Reviews'),
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  String _formatWeekDay(dynamic weekDay) {
    final day = weekDay.toString().split('.').last;
    return day[0].toUpperCase() + day.substring(1);
  }

  void _showCourseDetails(BuildContext context, dynamic course) {
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
                      course.name,
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
              Text(
                course.code,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              Divider(height: 32),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Instructor'),
                subtitle: Text(course.instructor),
                contentPadding: EdgeInsets.zero,
              ),
              ListTile(
                leading: Icon(Icons.schedule),
                title: Text('Schedule'),
                subtitle: Text(
                  '${_formatWeekDay(course.weekDay)}, ${course.startTime} - ${course.endTime}',
                ),
                contentPadding: EdgeInsets.zero,
              ),
              ListTile(
                leading: Icon(Icons.location_on),
                title: Text('Location'),
                subtitle: Text(course.location),
                contentPadding: EdgeInsets.zero,
              ),
              ListTile(
                leading: Icon(Icons.credit_card),
                title: Text('Credits'),
                subtitle: Text('${course.credits} ECTS'),
                contentPadding: EdgeInsets.zero,
              ),
              if (course.averageRating != null)
                ListTile(
                  leading: Icon(Icons.star, color: Colors.amber),
                  title: Text('Average Rating'),
                  subtitle: Text('${course.averageRating} / 5.0'),
                  contentPadding: EdgeInsets.zero,
                ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  _showCourseReviews(context, course);
                },
                child: Text('View Course Reviews'),
                style: ElevatedButton.styleFrom(padding: EdgeInsets.all(16)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showCourseReviews(BuildContext context, dynamic course) {
    final reviews = FakeData.courseReviews
        .where((r) => r.courseId == course.id)
        .toList();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.7,
        maxChildSize: 0.9,
        minChildSize: 0.5,
        builder: (context, scrollController) => Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Course Reviews',
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
              Text(course.name, style: TextStyle(color: Colors.grey)),
              SizedBox(height: 16),
              Expanded(
                child: reviews.isEmpty
                    ? Center(child: Text('No reviews yet'))
                    : ListView.builder(
                        controller: scrollController,
                        itemCount: reviews.length,
                        itemBuilder: (context, index) {
                          final review = reviews[index];
                          return Card(
                            margin: EdgeInsets.only(bottom: 12),
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        review.userName,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.star,
                                        size: 16,
                                        color: Colors.amber,
                                      ),
                                      Text(' ${review.rating}'),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Text(review.review),
                                  SizedBox(height: 12),
                                  Row(
                                    children: [
                                      _buildRatingChip(
                                        'Difficulty',
                                        review.difficultyRating,
                                      ),
                                      SizedBox(width: 8),
                                      _buildRatingChip(
                                        'Workload',
                                        review.workloadRating,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRatingChip(String label, double rating) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '$label: ',
            style: TextStyle(fontSize: 11, color: Colors.grey[700]),
          ),
          Text(
            rating.toString(),
            style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
