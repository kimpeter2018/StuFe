// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CourseModel _$CourseModelFromJson(Map json) => $checkedCreate(
  '_CourseModel',
  json,
  ($checkedConvert) {
    final val = _CourseModel(
      id: $checkedConvert('id', (v) => v as String),
      code: $checkedConvert('code', (v) => v as String),
      name: $checkedConvert('name', (v) => v as String),
      instructor: $checkedConvert('instructor', (v) => v as String),
      location: $checkedConvert('location', (v) => v as String),
      weekDay: $checkedConvert(
        'week_day',
        (v) => $enumDecode(_$WeekDayEnumMap, v),
      ),
      startTime: $checkedConvert('start_time', (v) => v as String),
      endTime: $checkedConvert('end_time', (v) => v as String),
      color: $checkedConvert('color', (v) => v as String?),
      description: $checkedConvert('description', (v) => v as String?),
      credits: $checkedConvert('credits', (v) => (v as num).toInt()),
      averageRating: $checkedConvert(
        'average_rating',
        (v) => (v as num?)?.toDouble(),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'weekDay': 'week_day',
    'startTime': 'start_time',
    'endTime': 'end_time',
    'averageRating': 'average_rating',
  },
);

Map<String, dynamic> _$CourseModelToJson(_CourseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'instructor': instance.instructor,
      'location': instance.location,
      'week_day': _$WeekDayEnumMap[instance.weekDay]!,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'color': instance.color,
      'description': instance.description,
      'credits': instance.credits,
      'average_rating': instance.averageRating,
    };

const _$WeekDayEnumMap = {
  WeekDay.monday: 'monday',
  WeekDay.tuesday: 'tuesday',
  WeekDay.wednesday: 'wednesday',
  WeekDay.thursday: 'thursday',
  WeekDay.friday: 'friday',
  WeekDay.saturday: 'saturday',
  WeekDay.sunday: 'sunday',
};

_CourseReviewModel _$CourseReviewModelFromJson(Map json) => $checkedCreate(
  '_CourseReviewModel',
  json,
  ($checkedConvert) {
    final val = _CourseReviewModel(
      id: $checkedConvert('id', (v) => v as String),
      courseId: $checkedConvert('course_id', (v) => v as String),
      userId: $checkedConvert('user_id', (v) => v as String),
      userName: $checkedConvert('user_name', (v) => v as String),
      rating: $checkedConvert('rating', (v) => (v as num).toDouble()),
      review: $checkedConvert('review', (v) => v as String),
      difficultyRating: $checkedConvert(
        'difficulty_rating',
        (v) => (v as num).toDouble(),
      ),
      workloadRating: $checkedConvert(
        'workload_rating',
        (v) => (v as num).toDouble(),
      ),
      createdAt: $checkedConvert(
        'created_at',
        (v) => DateTime.parse(v as String),
      ),
      upvotes: $checkedConvert('upvotes', (v) => (v as num?)?.toInt()),
    );
    return val;
  },
  fieldKeyMap: const {
    'courseId': 'course_id',
    'userId': 'user_id',
    'userName': 'user_name',
    'difficultyRating': 'difficulty_rating',
    'workloadRating': 'workload_rating',
    'createdAt': 'created_at',
  },
);

Map<String, dynamic> _$CourseReviewModelToJson(_CourseReviewModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'course_id': instance.courseId,
      'user_id': instance.userId,
      'user_name': instance.userName,
      'rating': instance.rating,
      'review': instance.review,
      'difficulty_rating': instance.difficultyRating,
      'workload_rating': instance.workloadRating,
      'created_at': instance.createdAt.toIso8601String(),
      'upvotes': instance.upvotes,
    };
