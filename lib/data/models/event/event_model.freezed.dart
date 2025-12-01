// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EventModel {

 String get id; String get title; String get organizerId; String get organizerName; DateTime get startTime; DateTime? get endTime; String get location; String? get description; String? get imageUrl; EventCategory get category; int get maxAttendees; int get currentAttendees; bool get isPublic; DateTime get createdAt; List<String> get attendeeIds;
/// Create a copy of EventModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EventModelCopyWith<EventModel> get copyWith => _$EventModelCopyWithImpl<EventModel>(this as EventModel, _$identity);

  /// Serializes this EventModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EventModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.organizerId, organizerId) || other.organizerId == organizerId)&&(identical(other.organizerName, organizerName) || other.organizerName == organizerName)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.location, location) || other.location == location)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.category, category) || other.category == category)&&(identical(other.maxAttendees, maxAttendees) || other.maxAttendees == maxAttendees)&&(identical(other.currentAttendees, currentAttendees) || other.currentAttendees == currentAttendees)&&(identical(other.isPublic, isPublic) || other.isPublic == isPublic)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.attendeeIds, attendeeIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,organizerId,organizerName,startTime,endTime,location,description,imageUrl,category,maxAttendees,currentAttendees,isPublic,createdAt,const DeepCollectionEquality().hash(attendeeIds));

@override
String toString() {
  return 'EventModel(id: $id, title: $title, organizerId: $organizerId, organizerName: $organizerName, startTime: $startTime, endTime: $endTime, location: $location, description: $description, imageUrl: $imageUrl, category: $category, maxAttendees: $maxAttendees, currentAttendees: $currentAttendees, isPublic: $isPublic, createdAt: $createdAt, attendeeIds: $attendeeIds)';
}


}

/// @nodoc
abstract mixin class $EventModelCopyWith<$Res>  {
  factory $EventModelCopyWith(EventModel value, $Res Function(EventModel) _then) = _$EventModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String organizerId, String organizerName, DateTime startTime, DateTime? endTime, String location, String? description, String? imageUrl, EventCategory category, int maxAttendees, int currentAttendees, bool isPublic, DateTime createdAt, List<String> attendeeIds
});




}
/// @nodoc
class _$EventModelCopyWithImpl<$Res>
    implements $EventModelCopyWith<$Res> {
  _$EventModelCopyWithImpl(this._self, this._then);

  final EventModel _self;
  final $Res Function(EventModel) _then;

/// Create a copy of EventModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? organizerId = null,Object? organizerName = null,Object? startTime = null,Object? endTime = freezed,Object? location = null,Object? description = freezed,Object? imageUrl = freezed,Object? category = null,Object? maxAttendees = null,Object? currentAttendees = null,Object? isPublic = null,Object? createdAt = null,Object? attendeeIds = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,organizerId: null == organizerId ? _self.organizerId : organizerId // ignore: cast_nullable_to_non_nullable
as String,organizerName: null == organizerName ? _self.organizerName : organizerName // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime?,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as EventCategory,maxAttendees: null == maxAttendees ? _self.maxAttendees : maxAttendees // ignore: cast_nullable_to_non_nullable
as int,currentAttendees: null == currentAttendees ? _self.currentAttendees : currentAttendees // ignore: cast_nullable_to_non_nullable
as int,isPublic: null == isPublic ? _self.isPublic : isPublic // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,attendeeIds: null == attendeeIds ? _self.attendeeIds : attendeeIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [EventModel].
extension EventModelPatterns on EventModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EventModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EventModel value)  $default,){
final _that = this;
switch (_that) {
case _EventModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EventModel value)?  $default,){
final _that = this;
switch (_that) {
case _EventModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String organizerId,  String organizerName,  DateTime startTime,  DateTime? endTime,  String location,  String? description,  String? imageUrl,  EventCategory category,  int maxAttendees,  int currentAttendees,  bool isPublic,  DateTime createdAt,  List<String> attendeeIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventModel() when $default != null:
return $default(_that.id,_that.title,_that.organizerId,_that.organizerName,_that.startTime,_that.endTime,_that.location,_that.description,_that.imageUrl,_that.category,_that.maxAttendees,_that.currentAttendees,_that.isPublic,_that.createdAt,_that.attendeeIds);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String organizerId,  String organizerName,  DateTime startTime,  DateTime? endTime,  String location,  String? description,  String? imageUrl,  EventCategory category,  int maxAttendees,  int currentAttendees,  bool isPublic,  DateTime createdAt,  List<String> attendeeIds)  $default,) {final _that = this;
switch (_that) {
case _EventModel():
return $default(_that.id,_that.title,_that.organizerId,_that.organizerName,_that.startTime,_that.endTime,_that.location,_that.description,_that.imageUrl,_that.category,_that.maxAttendees,_that.currentAttendees,_that.isPublic,_that.createdAt,_that.attendeeIds);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String organizerId,  String organizerName,  DateTime startTime,  DateTime? endTime,  String location,  String? description,  String? imageUrl,  EventCategory category,  int maxAttendees,  int currentAttendees,  bool isPublic,  DateTime createdAt,  List<String> attendeeIds)?  $default,) {final _that = this;
switch (_that) {
case _EventModel() when $default != null:
return $default(_that.id,_that.title,_that.organizerId,_that.organizerName,_that.startTime,_that.endTime,_that.location,_that.description,_that.imageUrl,_that.category,_that.maxAttendees,_that.currentAttendees,_that.isPublic,_that.createdAt,_that.attendeeIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EventModel implements EventModel {
  const _EventModel({required this.id, required this.title, required this.organizerId, required this.organizerName, required this.startTime, this.endTime, required this.location, this.description, this.imageUrl, required this.category, required this.maxAttendees, required this.currentAttendees, required this.isPublic, required this.createdAt, final  List<String> attendeeIds = const []}): _attendeeIds = attendeeIds;
  factory _EventModel.fromJson(Map<String, dynamic> json) => _$EventModelFromJson(json);

@override final  String id;
@override final  String title;
@override final  String organizerId;
@override final  String organizerName;
@override final  DateTime startTime;
@override final  DateTime? endTime;
@override final  String location;
@override final  String? description;
@override final  String? imageUrl;
@override final  EventCategory category;
@override final  int maxAttendees;
@override final  int currentAttendees;
@override final  bool isPublic;
@override final  DateTime createdAt;
 final  List<String> _attendeeIds;
@override@JsonKey() List<String> get attendeeIds {
  if (_attendeeIds is EqualUnmodifiableListView) return _attendeeIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_attendeeIds);
}


/// Create a copy of EventModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventModelCopyWith<_EventModel> get copyWith => __$EventModelCopyWithImpl<_EventModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EventModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.organizerId, organizerId) || other.organizerId == organizerId)&&(identical(other.organizerName, organizerName) || other.organizerName == organizerName)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.location, location) || other.location == location)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.category, category) || other.category == category)&&(identical(other.maxAttendees, maxAttendees) || other.maxAttendees == maxAttendees)&&(identical(other.currentAttendees, currentAttendees) || other.currentAttendees == currentAttendees)&&(identical(other.isPublic, isPublic) || other.isPublic == isPublic)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other._attendeeIds, _attendeeIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,organizerId,organizerName,startTime,endTime,location,description,imageUrl,category,maxAttendees,currentAttendees,isPublic,createdAt,const DeepCollectionEquality().hash(_attendeeIds));

@override
String toString() {
  return 'EventModel(id: $id, title: $title, organizerId: $organizerId, organizerName: $organizerName, startTime: $startTime, endTime: $endTime, location: $location, description: $description, imageUrl: $imageUrl, category: $category, maxAttendees: $maxAttendees, currentAttendees: $currentAttendees, isPublic: $isPublic, createdAt: $createdAt, attendeeIds: $attendeeIds)';
}


}

/// @nodoc
abstract mixin class _$EventModelCopyWith<$Res> implements $EventModelCopyWith<$Res> {
  factory _$EventModelCopyWith(_EventModel value, $Res Function(_EventModel) _then) = __$EventModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String organizerId, String organizerName, DateTime startTime, DateTime? endTime, String location, String? description, String? imageUrl, EventCategory category, int maxAttendees, int currentAttendees, bool isPublic, DateTime createdAt, List<String> attendeeIds
});




}
/// @nodoc
class __$EventModelCopyWithImpl<$Res>
    implements _$EventModelCopyWith<$Res> {
  __$EventModelCopyWithImpl(this._self, this._then);

  final _EventModel _self;
  final $Res Function(_EventModel) _then;

/// Create a copy of EventModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? organizerId = null,Object? organizerName = null,Object? startTime = null,Object? endTime = freezed,Object? location = null,Object? description = freezed,Object? imageUrl = freezed,Object? category = null,Object? maxAttendees = null,Object? currentAttendees = null,Object? isPublic = null,Object? createdAt = null,Object? attendeeIds = null,}) {
  return _then(_EventModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,organizerId: null == organizerId ? _self.organizerId : organizerId // ignore: cast_nullable_to_non_nullable
as String,organizerName: null == organizerName ? _self.organizerName : organizerName // ignore: cast_nullable_to_non_nullable
as String,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as DateTime,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime?,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as EventCategory,maxAttendees: null == maxAttendees ? _self.maxAttendees : maxAttendees // ignore: cast_nullable_to_non_nullable
as int,currentAttendees: null == currentAttendees ? _self.currentAttendees : currentAttendees // ignore: cast_nullable_to_non_nullable
as int,isPublic: null == isPublic ? _self.isPublic : isPublic // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,attendeeIds: null == attendeeIds ? _self._attendeeIds : attendeeIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
