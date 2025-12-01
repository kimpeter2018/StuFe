import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_model.freezed.dart';
part 'event_model.g.dart';

@freezed
abstract class EventModel with _$EventModel {
  const factory EventModel({
    required String id,
    required String title,
    required String organizerId,
    required String organizerName,
    required DateTime startTime,
    DateTime? endTime,
    required String location,
    String? description,
    String? imageUrl,
    required EventCategory category,
    required int maxAttendees,
    required int currentAttendees,
    required bool isPublic,
    required DateTime createdAt,
    @Default([]) List<String> attendeeIds,
  }) = _EventModel;

  factory EventModel.fromJson(Map<String, Object?> json) =>
      _$EventModelFromJson(json);
}

enum EventCategory { party, study, sports, food, culture, gaming, other }
