// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EventModel _$EventModelFromJson(Map json) => $checkedCreate(
  '_EventModel',
  json,
  ($checkedConvert) {
    final val = _EventModel(
      id: $checkedConvert('id', (v) => v as String),
      title: $checkedConvert('title', (v) => v as String),
      organizerId: $checkedConvert('organizer_id', (v) => v as String),
      organizerName: $checkedConvert('organizer_name', (v) => v as String),
      startTime: $checkedConvert(
        'start_time',
        (v) => DateTime.parse(v as String),
      ),
      endTime: $checkedConvert(
        'end_time',
        (v) => v == null ? null : DateTime.parse(v as String),
      ),
      location: $checkedConvert('location', (v) => v as String),
      description: $checkedConvert('description', (v) => v as String?),
      imageUrl: $checkedConvert('image_url', (v) => v as String?),
      category: $checkedConvert(
        'category',
        (v) => $enumDecode(_$EventCategoryEnumMap, v),
      ),
      maxAttendees: $checkedConvert('max_attendees', (v) => (v as num).toInt()),
      currentAttendees: $checkedConvert(
        'current_attendees',
        (v) => (v as num).toInt(),
      ),
      isPublic: $checkedConvert('is_public', (v) => v as bool),
      createdAt: $checkedConvert(
        'created_at',
        (v) => DateTime.parse(v as String),
      ),
      attendeeIds: $checkedConvert(
        'attendee_ids',
        (v) =>
            (v as List<dynamic>?)?.map((e) => e as String).toList() ?? const [],
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'organizerId': 'organizer_id',
    'organizerName': 'organizer_name',
    'startTime': 'start_time',
    'endTime': 'end_time',
    'imageUrl': 'image_url',
    'maxAttendees': 'max_attendees',
    'currentAttendees': 'current_attendees',
    'isPublic': 'is_public',
    'createdAt': 'created_at',
    'attendeeIds': 'attendee_ids',
  },
);

Map<String, dynamic> _$EventModelToJson(_EventModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'organizer_id': instance.organizerId,
      'organizer_name': instance.organizerName,
      'start_time': instance.startTime.toIso8601String(),
      'end_time': instance.endTime?.toIso8601String(),
      'location': instance.location,
      'description': instance.description,
      'image_url': instance.imageUrl,
      'category': _$EventCategoryEnumMap[instance.category]!,
      'max_attendees': instance.maxAttendees,
      'current_attendees': instance.currentAttendees,
      'is_public': instance.isPublic,
      'created_at': instance.createdAt.toIso8601String(),
      'attendee_ids': instance.attendeeIds,
    };

const _$EventCategoryEnumMap = {
  EventCategory.party: 'party',
  EventCategory.study: 'study',
  EventCategory.sports: 'sports',
  EventCategory.food: 'food',
  EventCategory.culture: 'culture',
  EventCategory.gaming: 'gaming',
  EventCategory.other: 'other',
};
