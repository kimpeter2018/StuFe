// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CourseModel {

 String get id; String get code; String get name; String get instructor; String get location; WeekDay get weekDay; String get startTime;// "09:00"
 String get endTime;// "11:00"
 String? get color; String? get description; int get credits; double? get averageRating;
/// Create a copy of CourseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseModelCopyWith<CourseModel> get copyWith => _$CourseModelCopyWithImpl<CourseModel>(this as CourseModel, _$identity);

  /// Serializes this CourseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.instructor, instructor) || other.instructor == instructor)&&(identical(other.location, location) || other.location == location)&&(identical(other.weekDay, weekDay) || other.weekDay == weekDay)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.color, color) || other.color == color)&&(identical(other.description, description) || other.description == description)&&(identical(other.credits, credits) || other.credits == credits)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,code,name,instructor,location,weekDay,startTime,endTime,color,description,credits,averageRating);

@override
String toString() {
  return 'CourseModel(id: $id, code: $code, name: $name, instructor: $instructor, location: $location, weekDay: $weekDay, startTime: $startTime, endTime: $endTime, color: $color, description: $description, credits: $credits, averageRating: $averageRating)';
}


}

/// @nodoc
abstract mixin class $CourseModelCopyWith<$Res>  {
  factory $CourseModelCopyWith(CourseModel value, $Res Function(CourseModel) _then) = _$CourseModelCopyWithImpl;
@useResult
$Res call({
 String id, String code, String name, String instructor, String location, WeekDay weekDay, String startTime, String endTime, String? color, String? description, int credits, double? averageRating
});




}
/// @nodoc
class _$CourseModelCopyWithImpl<$Res>
    implements $CourseModelCopyWith<$Res> {
  _$CourseModelCopyWithImpl(this._self, this._then);

  final CourseModel _self;
  final $Res Function(CourseModel) _then;

/// Create a copy of CourseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? code = null,Object? name = null,Object? instructor = null,Object? location = null,Object? weekDay = null,Object? startTime = null,Object? endTime = null,Object? color = freezed,Object? description = freezed,Object? credits = null,Object? averageRating = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,instructor: null == instructor ? _self.instructor : instructor // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,weekDay: null == weekDay ? _self.weekDay : weekDay // ignore: cast_nullable_to_non_nullable
as WeekDay,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,credits: null == credits ? _self.credits : credits // ignore: cast_nullable_to_non_nullable
as int,averageRating: freezed == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [CourseModel].
extension CourseModelPatterns on CourseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CourseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CourseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CourseModel value)  $default,){
final _that = this;
switch (_that) {
case _CourseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CourseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CourseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String code,  String name,  String instructor,  String location,  WeekDay weekDay,  String startTime,  String endTime,  String? color,  String? description,  int credits,  double? averageRating)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CourseModel() when $default != null:
return $default(_that.id,_that.code,_that.name,_that.instructor,_that.location,_that.weekDay,_that.startTime,_that.endTime,_that.color,_that.description,_that.credits,_that.averageRating);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String code,  String name,  String instructor,  String location,  WeekDay weekDay,  String startTime,  String endTime,  String? color,  String? description,  int credits,  double? averageRating)  $default,) {final _that = this;
switch (_that) {
case _CourseModel():
return $default(_that.id,_that.code,_that.name,_that.instructor,_that.location,_that.weekDay,_that.startTime,_that.endTime,_that.color,_that.description,_that.credits,_that.averageRating);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String code,  String name,  String instructor,  String location,  WeekDay weekDay,  String startTime,  String endTime,  String? color,  String? description,  int credits,  double? averageRating)?  $default,) {final _that = this;
switch (_that) {
case _CourseModel() when $default != null:
return $default(_that.id,_that.code,_that.name,_that.instructor,_that.location,_that.weekDay,_that.startTime,_that.endTime,_that.color,_that.description,_that.credits,_that.averageRating);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CourseModel implements CourseModel {
  const _CourseModel({required this.id, required this.code, required this.name, required this.instructor, required this.location, required this.weekDay, required this.startTime, required this.endTime, this.color, this.description, required this.credits, this.averageRating});
  factory _CourseModel.fromJson(Map<String, dynamic> json) => _$CourseModelFromJson(json);

@override final  String id;
@override final  String code;
@override final  String name;
@override final  String instructor;
@override final  String location;
@override final  WeekDay weekDay;
@override final  String startTime;
// "09:00"
@override final  String endTime;
// "11:00"
@override final  String? color;
@override final  String? description;
@override final  int credits;
@override final  double? averageRating;

/// Create a copy of CourseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseModelCopyWith<_CourseModel> get copyWith => __$CourseModelCopyWithImpl<_CourseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourseModel&&(identical(other.id, id) || other.id == id)&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.instructor, instructor) || other.instructor == instructor)&&(identical(other.location, location) || other.location == location)&&(identical(other.weekDay, weekDay) || other.weekDay == weekDay)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.color, color) || other.color == color)&&(identical(other.description, description) || other.description == description)&&(identical(other.credits, credits) || other.credits == credits)&&(identical(other.averageRating, averageRating) || other.averageRating == averageRating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,code,name,instructor,location,weekDay,startTime,endTime,color,description,credits,averageRating);

@override
String toString() {
  return 'CourseModel(id: $id, code: $code, name: $name, instructor: $instructor, location: $location, weekDay: $weekDay, startTime: $startTime, endTime: $endTime, color: $color, description: $description, credits: $credits, averageRating: $averageRating)';
}


}

/// @nodoc
abstract mixin class _$CourseModelCopyWith<$Res> implements $CourseModelCopyWith<$Res> {
  factory _$CourseModelCopyWith(_CourseModel value, $Res Function(_CourseModel) _then) = __$CourseModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String code, String name, String instructor, String location, WeekDay weekDay, String startTime, String endTime, String? color, String? description, int credits, double? averageRating
});




}
/// @nodoc
class __$CourseModelCopyWithImpl<$Res>
    implements _$CourseModelCopyWith<$Res> {
  __$CourseModelCopyWithImpl(this._self, this._then);

  final _CourseModel _self;
  final $Res Function(_CourseModel) _then;

/// Create a copy of CourseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? code = null,Object? name = null,Object? instructor = null,Object? location = null,Object? weekDay = null,Object? startTime = null,Object? endTime = null,Object? color = freezed,Object? description = freezed,Object? credits = null,Object? averageRating = freezed,}) {
  return _then(_CourseModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,instructor: null == instructor ? _self.instructor : instructor // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,weekDay: null == weekDay ? _self.weekDay : weekDay // ignore: cast_nullable_to_non_nullable
as WeekDay,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,credits: null == credits ? _self.credits : credits // ignore: cast_nullable_to_non_nullable
as int,averageRating: freezed == averageRating ? _self.averageRating : averageRating // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}


/// @nodoc
mixin _$CourseReviewModel {

 String get id; String get courseId; String get userId; String get userName; double get rating; String get review; double get difficultyRating; double get workloadRating; DateTime get createdAt; int? get upvotes;
/// Create a copy of CourseReviewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseReviewModelCopyWith<CourseReviewModel> get copyWith => _$CourseReviewModelCopyWithImpl<CourseReviewModel>(this as CourseReviewModel, _$identity);

  /// Serializes this CourseReviewModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseReviewModel&&(identical(other.id, id) || other.id == id)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.review, review) || other.review == review)&&(identical(other.difficultyRating, difficultyRating) || other.difficultyRating == difficultyRating)&&(identical(other.workloadRating, workloadRating) || other.workloadRating == workloadRating)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.upvotes, upvotes) || other.upvotes == upvotes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,courseId,userId,userName,rating,review,difficultyRating,workloadRating,createdAt,upvotes);

@override
String toString() {
  return 'CourseReviewModel(id: $id, courseId: $courseId, userId: $userId, userName: $userName, rating: $rating, review: $review, difficultyRating: $difficultyRating, workloadRating: $workloadRating, createdAt: $createdAt, upvotes: $upvotes)';
}


}

/// @nodoc
abstract mixin class $CourseReviewModelCopyWith<$Res>  {
  factory $CourseReviewModelCopyWith(CourseReviewModel value, $Res Function(CourseReviewModel) _then) = _$CourseReviewModelCopyWithImpl;
@useResult
$Res call({
 String id, String courseId, String userId, String userName, double rating, String review, double difficultyRating, double workloadRating, DateTime createdAt, int? upvotes
});




}
/// @nodoc
class _$CourseReviewModelCopyWithImpl<$Res>
    implements $CourseReviewModelCopyWith<$Res> {
  _$CourseReviewModelCopyWithImpl(this._self, this._then);

  final CourseReviewModel _self;
  final $Res Function(CourseReviewModel) _then;

/// Create a copy of CourseReviewModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? courseId = null,Object? userId = null,Object? userName = null,Object? rating = null,Object? review = null,Object? difficultyRating = null,Object? workloadRating = null,Object? createdAt = null,Object? upvotes = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,review: null == review ? _self.review : review // ignore: cast_nullable_to_non_nullable
as String,difficultyRating: null == difficultyRating ? _self.difficultyRating : difficultyRating // ignore: cast_nullable_to_non_nullable
as double,workloadRating: null == workloadRating ? _self.workloadRating : workloadRating // ignore: cast_nullable_to_non_nullable
as double,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,upvotes: freezed == upvotes ? _self.upvotes : upvotes // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [CourseReviewModel].
extension CourseReviewModelPatterns on CourseReviewModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CourseReviewModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CourseReviewModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CourseReviewModel value)  $default,){
final _that = this;
switch (_that) {
case _CourseReviewModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CourseReviewModel value)?  $default,){
final _that = this;
switch (_that) {
case _CourseReviewModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String courseId,  String userId,  String userName,  double rating,  String review,  double difficultyRating,  double workloadRating,  DateTime createdAt,  int? upvotes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CourseReviewModel() when $default != null:
return $default(_that.id,_that.courseId,_that.userId,_that.userName,_that.rating,_that.review,_that.difficultyRating,_that.workloadRating,_that.createdAt,_that.upvotes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String courseId,  String userId,  String userName,  double rating,  String review,  double difficultyRating,  double workloadRating,  DateTime createdAt,  int? upvotes)  $default,) {final _that = this;
switch (_that) {
case _CourseReviewModel():
return $default(_that.id,_that.courseId,_that.userId,_that.userName,_that.rating,_that.review,_that.difficultyRating,_that.workloadRating,_that.createdAt,_that.upvotes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String courseId,  String userId,  String userName,  double rating,  String review,  double difficultyRating,  double workloadRating,  DateTime createdAt,  int? upvotes)?  $default,) {final _that = this;
switch (_that) {
case _CourseReviewModel() when $default != null:
return $default(_that.id,_that.courseId,_that.userId,_that.userName,_that.rating,_that.review,_that.difficultyRating,_that.workloadRating,_that.createdAt,_that.upvotes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CourseReviewModel implements CourseReviewModel {
  const _CourseReviewModel({required this.id, required this.courseId, required this.userId, required this.userName, required this.rating, required this.review, required this.difficultyRating, required this.workloadRating, required this.createdAt, this.upvotes});
  factory _CourseReviewModel.fromJson(Map<String, dynamic> json) => _$CourseReviewModelFromJson(json);

@override final  String id;
@override final  String courseId;
@override final  String userId;
@override final  String userName;
@override final  double rating;
@override final  String review;
@override final  double difficultyRating;
@override final  double workloadRating;
@override final  DateTime createdAt;
@override final  int? upvotes;

/// Create a copy of CourseReviewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseReviewModelCopyWith<_CourseReviewModel> get copyWith => __$CourseReviewModelCopyWithImpl<_CourseReviewModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourseReviewModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourseReviewModel&&(identical(other.id, id) || other.id == id)&&(identical(other.courseId, courseId) || other.courseId == courseId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.review, review) || other.review == review)&&(identical(other.difficultyRating, difficultyRating) || other.difficultyRating == difficultyRating)&&(identical(other.workloadRating, workloadRating) || other.workloadRating == workloadRating)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.upvotes, upvotes) || other.upvotes == upvotes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,courseId,userId,userName,rating,review,difficultyRating,workloadRating,createdAt,upvotes);

@override
String toString() {
  return 'CourseReviewModel(id: $id, courseId: $courseId, userId: $userId, userName: $userName, rating: $rating, review: $review, difficultyRating: $difficultyRating, workloadRating: $workloadRating, createdAt: $createdAt, upvotes: $upvotes)';
}


}

/// @nodoc
abstract mixin class _$CourseReviewModelCopyWith<$Res> implements $CourseReviewModelCopyWith<$Res> {
  factory _$CourseReviewModelCopyWith(_CourseReviewModel value, $Res Function(_CourseReviewModel) _then) = __$CourseReviewModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String courseId, String userId, String userName, double rating, String review, double difficultyRating, double workloadRating, DateTime createdAt, int? upvotes
});




}
/// @nodoc
class __$CourseReviewModelCopyWithImpl<$Res>
    implements _$CourseReviewModelCopyWith<$Res> {
  __$CourseReviewModelCopyWithImpl(this._self, this._then);

  final _CourseReviewModel _self;
  final $Res Function(_CourseReviewModel) _then;

/// Create a copy of CourseReviewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? courseId = null,Object? userId = null,Object? userName = null,Object? rating = null,Object? review = null,Object? difficultyRating = null,Object? workloadRating = null,Object? createdAt = null,Object? upvotes = freezed,}) {
  return _then(_CourseReviewModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,courseId: null == courseId ? _self.courseId : courseId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,review: null == review ? _self.review : review // ignore: cast_nullable_to_non_nullable
as String,difficultyRating: null == difficultyRating ? _self.difficultyRating : difficultyRating // ignore: cast_nullable_to_non_nullable
as double,workloadRating: null == workloadRating ? _self.workloadRating : workloadRating // ignore: cast_nullable_to_non_nullable
as double,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,upvotes: freezed == upvotes ? _self.upvotes : upvotes // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
