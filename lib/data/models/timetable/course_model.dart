import 'package:freezed_annotation/freezed_annotation.dart';

part 'course_model.freezed.dart';
part 'course_model.g.dart';

@freezed
abstract class CourseModel with _$CourseModel {
  const factory CourseModel({
    required String id,
    required String code,
    required String name,
    required String instructor,
    required String location,
    required WeekDay weekDay,
    required String startTime, // "09:00"
    required String endTime, // "11:00"
    String? color,
    String? description,
    required int credits,
    double? averageRating,
  }) = _CourseModel;

  factory CourseModel.fromJson(Map<String, Object?> json) =>
      _$CourseModelFromJson(json);
}

enum WeekDay { monday, tuesday, wednesday, thursday, friday, saturday, sunday }

@freezed
abstract class CourseReviewModel with _$CourseReviewModel {
  const factory CourseReviewModel({
    required String id,
    required String courseId,
    required String userId,
    required String userName,
    required double rating,
    required String review,
    required double difficultyRating,
    required double workloadRating,
    required DateTime createdAt,
    int? upvotes,
  }) = _CourseReviewModel;

  factory CourseReviewModel.fromJson(Map<String, Object?> json) =>
      _$CourseReviewModelFromJson(json);
}
