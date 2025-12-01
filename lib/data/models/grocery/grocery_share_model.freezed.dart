// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'grocery_share_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GroceryShareModel {

 String get id; String get creatorId; String get creatorName; String get itemName; double get totalPrice; int get totalQuantity; int get spotsAvailable; int get spotsTaken; DateTime get expiryDate; String? get imageUrl; String? get description; String get pickupLocation; DateTime get createdAt; List<ParticipantModel> get participants;
/// Create a copy of GroceryShareModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroceryShareModelCopyWith<GroceryShareModel> get copyWith => _$GroceryShareModelCopyWithImpl<GroceryShareModel>(this as GroceryShareModel, _$identity);

  /// Serializes this GroceryShareModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroceryShareModel&&(identical(other.id, id) || other.id == id)&&(identical(other.creatorId, creatorId) || other.creatorId == creatorId)&&(identical(other.creatorName, creatorName) || other.creatorName == creatorName)&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.totalQuantity, totalQuantity) || other.totalQuantity == totalQuantity)&&(identical(other.spotsAvailable, spotsAvailable) || other.spotsAvailable == spotsAvailable)&&(identical(other.spotsTaken, spotsTaken) || other.spotsTaken == spotsTaken)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.description, description) || other.description == description)&&(identical(other.pickupLocation, pickupLocation) || other.pickupLocation == pickupLocation)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.participants, participants));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,creatorId,creatorName,itemName,totalPrice,totalQuantity,spotsAvailable,spotsTaken,expiryDate,imageUrl,description,pickupLocation,createdAt,const DeepCollectionEquality().hash(participants));

@override
String toString() {
  return 'GroceryShareModel(id: $id, creatorId: $creatorId, creatorName: $creatorName, itemName: $itemName, totalPrice: $totalPrice, totalQuantity: $totalQuantity, spotsAvailable: $spotsAvailable, spotsTaken: $spotsTaken, expiryDate: $expiryDate, imageUrl: $imageUrl, description: $description, pickupLocation: $pickupLocation, createdAt: $createdAt, participants: $participants)';
}


}

/// @nodoc
abstract mixin class $GroceryShareModelCopyWith<$Res>  {
  factory $GroceryShareModelCopyWith(GroceryShareModel value, $Res Function(GroceryShareModel) _then) = _$GroceryShareModelCopyWithImpl;
@useResult
$Res call({
 String id, String creatorId, String creatorName, String itemName, double totalPrice, int totalQuantity, int spotsAvailable, int spotsTaken, DateTime expiryDate, String? imageUrl, String? description, String pickupLocation, DateTime createdAt, List<ParticipantModel> participants
});




}
/// @nodoc
class _$GroceryShareModelCopyWithImpl<$Res>
    implements $GroceryShareModelCopyWith<$Res> {
  _$GroceryShareModelCopyWithImpl(this._self, this._then);

  final GroceryShareModel _self;
  final $Res Function(GroceryShareModel) _then;

/// Create a copy of GroceryShareModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? creatorId = null,Object? creatorName = null,Object? itemName = null,Object? totalPrice = null,Object? totalQuantity = null,Object? spotsAvailable = null,Object? spotsTaken = null,Object? expiryDate = null,Object? imageUrl = freezed,Object? description = freezed,Object? pickupLocation = null,Object? createdAt = null,Object? participants = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,creatorId: null == creatorId ? _self.creatorId : creatorId // ignore: cast_nullable_to_non_nullable
as String,creatorName: null == creatorName ? _self.creatorName : creatorName // ignore: cast_nullable_to_non_nullable
as String,itemName: null == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double,totalQuantity: null == totalQuantity ? _self.totalQuantity : totalQuantity // ignore: cast_nullable_to_non_nullable
as int,spotsAvailable: null == spotsAvailable ? _self.spotsAvailable : spotsAvailable // ignore: cast_nullable_to_non_nullable
as int,spotsTaken: null == spotsTaken ? _self.spotsTaken : spotsTaken // ignore: cast_nullable_to_non_nullable
as int,expiryDate: null == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as DateTime,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,pickupLocation: null == pickupLocation ? _self.pickupLocation : pickupLocation // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,participants: null == participants ? _self.participants : participants // ignore: cast_nullable_to_non_nullable
as List<ParticipantModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [GroceryShareModel].
extension GroceryShareModelPatterns on GroceryShareModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroceryShareModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroceryShareModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroceryShareModel value)  $default,){
final _that = this;
switch (_that) {
case _GroceryShareModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroceryShareModel value)?  $default,){
final _that = this;
switch (_that) {
case _GroceryShareModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String creatorId,  String creatorName,  String itemName,  double totalPrice,  int totalQuantity,  int spotsAvailable,  int spotsTaken,  DateTime expiryDate,  String? imageUrl,  String? description,  String pickupLocation,  DateTime createdAt,  List<ParticipantModel> participants)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroceryShareModel() when $default != null:
return $default(_that.id,_that.creatorId,_that.creatorName,_that.itemName,_that.totalPrice,_that.totalQuantity,_that.spotsAvailable,_that.spotsTaken,_that.expiryDate,_that.imageUrl,_that.description,_that.pickupLocation,_that.createdAt,_that.participants);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String creatorId,  String creatorName,  String itemName,  double totalPrice,  int totalQuantity,  int spotsAvailable,  int spotsTaken,  DateTime expiryDate,  String? imageUrl,  String? description,  String pickupLocation,  DateTime createdAt,  List<ParticipantModel> participants)  $default,) {final _that = this;
switch (_that) {
case _GroceryShareModel():
return $default(_that.id,_that.creatorId,_that.creatorName,_that.itemName,_that.totalPrice,_that.totalQuantity,_that.spotsAvailable,_that.spotsTaken,_that.expiryDate,_that.imageUrl,_that.description,_that.pickupLocation,_that.createdAt,_that.participants);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String creatorId,  String creatorName,  String itemName,  double totalPrice,  int totalQuantity,  int spotsAvailable,  int spotsTaken,  DateTime expiryDate,  String? imageUrl,  String? description,  String pickupLocation,  DateTime createdAt,  List<ParticipantModel> participants)?  $default,) {final _that = this;
switch (_that) {
case _GroceryShareModel() when $default != null:
return $default(_that.id,_that.creatorId,_that.creatorName,_that.itemName,_that.totalPrice,_that.totalQuantity,_that.spotsAvailable,_that.spotsTaken,_that.expiryDate,_that.imageUrl,_that.description,_that.pickupLocation,_that.createdAt,_that.participants);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GroceryShareModel implements GroceryShareModel {
  const _GroceryShareModel({required this.id, required this.creatorId, required this.creatorName, required this.itemName, required this.totalPrice, required this.totalQuantity, required this.spotsAvailable, required this.spotsTaken, required this.expiryDate, this.imageUrl, this.description, required this.pickupLocation, required this.createdAt, final  List<ParticipantModel> participants = const []}): _participants = participants;
  factory _GroceryShareModel.fromJson(Map<String, dynamic> json) => _$GroceryShareModelFromJson(json);

@override final  String id;
@override final  String creatorId;
@override final  String creatorName;
@override final  String itemName;
@override final  double totalPrice;
@override final  int totalQuantity;
@override final  int spotsAvailable;
@override final  int spotsTaken;
@override final  DateTime expiryDate;
@override final  String? imageUrl;
@override final  String? description;
@override final  String pickupLocation;
@override final  DateTime createdAt;
 final  List<ParticipantModel> _participants;
@override@JsonKey() List<ParticipantModel> get participants {
  if (_participants is EqualUnmodifiableListView) return _participants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_participants);
}


/// Create a copy of GroceryShareModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroceryShareModelCopyWith<_GroceryShareModel> get copyWith => __$GroceryShareModelCopyWithImpl<_GroceryShareModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GroceryShareModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroceryShareModel&&(identical(other.id, id) || other.id == id)&&(identical(other.creatorId, creatorId) || other.creatorId == creatorId)&&(identical(other.creatorName, creatorName) || other.creatorName == creatorName)&&(identical(other.itemName, itemName) || other.itemName == itemName)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.totalQuantity, totalQuantity) || other.totalQuantity == totalQuantity)&&(identical(other.spotsAvailable, spotsAvailable) || other.spotsAvailable == spotsAvailable)&&(identical(other.spotsTaken, spotsTaken) || other.spotsTaken == spotsTaken)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.description, description) || other.description == description)&&(identical(other.pickupLocation, pickupLocation) || other.pickupLocation == pickupLocation)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other._participants, _participants));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,creatorId,creatorName,itemName,totalPrice,totalQuantity,spotsAvailable,spotsTaken,expiryDate,imageUrl,description,pickupLocation,createdAt,const DeepCollectionEquality().hash(_participants));

@override
String toString() {
  return 'GroceryShareModel(id: $id, creatorId: $creatorId, creatorName: $creatorName, itemName: $itemName, totalPrice: $totalPrice, totalQuantity: $totalQuantity, spotsAvailable: $spotsAvailable, spotsTaken: $spotsTaken, expiryDate: $expiryDate, imageUrl: $imageUrl, description: $description, pickupLocation: $pickupLocation, createdAt: $createdAt, participants: $participants)';
}


}

/// @nodoc
abstract mixin class _$GroceryShareModelCopyWith<$Res> implements $GroceryShareModelCopyWith<$Res> {
  factory _$GroceryShareModelCopyWith(_GroceryShareModel value, $Res Function(_GroceryShareModel) _then) = __$GroceryShareModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String creatorId, String creatorName, String itemName, double totalPrice, int totalQuantity, int spotsAvailable, int spotsTaken, DateTime expiryDate, String? imageUrl, String? description, String pickupLocation, DateTime createdAt, List<ParticipantModel> participants
});




}
/// @nodoc
class __$GroceryShareModelCopyWithImpl<$Res>
    implements _$GroceryShareModelCopyWith<$Res> {
  __$GroceryShareModelCopyWithImpl(this._self, this._then);

  final _GroceryShareModel _self;
  final $Res Function(_GroceryShareModel) _then;

/// Create a copy of GroceryShareModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? creatorId = null,Object? creatorName = null,Object? itemName = null,Object? totalPrice = null,Object? totalQuantity = null,Object? spotsAvailable = null,Object? spotsTaken = null,Object? expiryDate = null,Object? imageUrl = freezed,Object? description = freezed,Object? pickupLocation = null,Object? createdAt = null,Object? participants = null,}) {
  return _then(_GroceryShareModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,creatorId: null == creatorId ? _self.creatorId : creatorId // ignore: cast_nullable_to_non_nullable
as String,creatorName: null == creatorName ? _self.creatorName : creatorName // ignore: cast_nullable_to_non_nullable
as String,itemName: null == itemName ? _self.itemName : itemName // ignore: cast_nullable_to_non_nullable
as String,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double,totalQuantity: null == totalQuantity ? _self.totalQuantity : totalQuantity // ignore: cast_nullable_to_non_nullable
as int,spotsAvailable: null == spotsAvailable ? _self.spotsAvailable : spotsAvailable // ignore: cast_nullable_to_non_nullable
as int,spotsTaken: null == spotsTaken ? _self.spotsTaken : spotsTaken // ignore: cast_nullable_to_non_nullable
as int,expiryDate: null == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as DateTime,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,pickupLocation: null == pickupLocation ? _self.pickupLocation : pickupLocation // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,participants: null == participants ? _self._participants : participants // ignore: cast_nullable_to_non_nullable
as List<ParticipantModel>,
  ));
}


}


/// @nodoc
mixin _$ParticipantModel {

 String get userId; String get userName; int get quantity; DateTime get joinedAt;
/// Create a copy of ParticipantModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParticipantModelCopyWith<ParticipantModel> get copyWith => _$ParticipantModelCopyWithImpl<ParticipantModel>(this as ParticipantModel, _$identity);

  /// Serializes this ParticipantModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParticipantModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.joinedAt, joinedAt) || other.joinedAt == joinedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,userName,quantity,joinedAt);

@override
String toString() {
  return 'ParticipantModel(userId: $userId, userName: $userName, quantity: $quantity, joinedAt: $joinedAt)';
}


}

/// @nodoc
abstract mixin class $ParticipantModelCopyWith<$Res>  {
  factory $ParticipantModelCopyWith(ParticipantModel value, $Res Function(ParticipantModel) _then) = _$ParticipantModelCopyWithImpl;
@useResult
$Res call({
 String userId, String userName, int quantity, DateTime joinedAt
});




}
/// @nodoc
class _$ParticipantModelCopyWithImpl<$Res>
    implements $ParticipantModelCopyWith<$Res> {
  _$ParticipantModelCopyWithImpl(this._self, this._then);

  final ParticipantModel _self;
  final $Res Function(ParticipantModel) _then;

/// Create a copy of ParticipantModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? userName = null,Object? quantity = null,Object? joinedAt = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,joinedAt: null == joinedAt ? _self.joinedAt : joinedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ParticipantModel].
extension ParticipantModelPatterns on ParticipantModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParticipantModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParticipantModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParticipantModel value)  $default,){
final _that = this;
switch (_that) {
case _ParticipantModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParticipantModel value)?  $default,){
final _that = this;
switch (_that) {
case _ParticipantModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String userName,  int quantity,  DateTime joinedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParticipantModel() when $default != null:
return $default(_that.userId,_that.userName,_that.quantity,_that.joinedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String userName,  int quantity,  DateTime joinedAt)  $default,) {final _that = this;
switch (_that) {
case _ParticipantModel():
return $default(_that.userId,_that.userName,_that.quantity,_that.joinedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String userName,  int quantity,  DateTime joinedAt)?  $default,) {final _that = this;
switch (_that) {
case _ParticipantModel() when $default != null:
return $default(_that.userId,_that.userName,_that.quantity,_that.joinedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParticipantModel implements ParticipantModel {
  const _ParticipantModel({required this.userId, required this.userName, required this.quantity, required this.joinedAt});
  factory _ParticipantModel.fromJson(Map<String, dynamic> json) => _$ParticipantModelFromJson(json);

@override final  String userId;
@override final  String userName;
@override final  int quantity;
@override final  DateTime joinedAt;

/// Create a copy of ParticipantModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParticipantModelCopyWith<_ParticipantModel> get copyWith => __$ParticipantModelCopyWithImpl<_ParticipantModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParticipantModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParticipantModel&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.joinedAt, joinedAt) || other.joinedAt == joinedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,userName,quantity,joinedAt);

@override
String toString() {
  return 'ParticipantModel(userId: $userId, userName: $userName, quantity: $quantity, joinedAt: $joinedAt)';
}


}

/// @nodoc
abstract mixin class _$ParticipantModelCopyWith<$Res> implements $ParticipantModelCopyWith<$Res> {
  factory _$ParticipantModelCopyWith(_ParticipantModel value, $Res Function(_ParticipantModel) _then) = __$ParticipantModelCopyWithImpl;
@override @useResult
$Res call({
 String userId, String userName, int quantity, DateTime joinedAt
});




}
/// @nodoc
class __$ParticipantModelCopyWithImpl<$Res>
    implements _$ParticipantModelCopyWith<$Res> {
  __$ParticipantModelCopyWithImpl(this._self, this._then);

  final _ParticipantModel _self;
  final $Res Function(_ParticipantModel) _then;

/// Create a copy of ParticipantModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? userName = null,Object? quantity = null,Object? joinedAt = null,}) {
  return _then(_ParticipantModel(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,joinedAt: null == joinedAt ? _self.joinedAt : joinedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
