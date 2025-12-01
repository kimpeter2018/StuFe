// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listing_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ListingModel {

 String get id; String get sellerId; String get sellerName; String get title; double get price; String get description; ListingCategory get category; ListingCondition get condition; List<String> get imageUrls; String get location; bool get isActive; DateTime get createdAt; int? get viewCount;
/// Create a copy of ListingModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingModelCopyWith<ListingModel> get copyWith => _$ListingModelCopyWithImpl<ListingModel>(this as ListingModel, _$identity);

  /// Serializes this ListingModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingModel&&(identical(other.id, id) || other.id == id)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId)&&(identical(other.sellerName, sellerName) || other.sellerName == sellerName)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.condition, condition) || other.condition == condition)&&const DeepCollectionEquality().equals(other.imageUrls, imageUrls)&&(identical(other.location, location) || other.location == location)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.viewCount, viewCount) || other.viewCount == viewCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sellerId,sellerName,title,price,description,category,condition,const DeepCollectionEquality().hash(imageUrls),location,isActive,createdAt,viewCount);

@override
String toString() {
  return 'ListingModel(id: $id, sellerId: $sellerId, sellerName: $sellerName, title: $title, price: $price, description: $description, category: $category, condition: $condition, imageUrls: $imageUrls, location: $location, isActive: $isActive, createdAt: $createdAt, viewCount: $viewCount)';
}


}

/// @nodoc
abstract mixin class $ListingModelCopyWith<$Res>  {
  factory $ListingModelCopyWith(ListingModel value, $Res Function(ListingModel) _then) = _$ListingModelCopyWithImpl;
@useResult
$Res call({
 String id, String sellerId, String sellerName, String title, double price, String description, ListingCategory category, ListingCondition condition, List<String> imageUrls, String location, bool isActive, DateTime createdAt, int? viewCount
});




}
/// @nodoc
class _$ListingModelCopyWithImpl<$Res>
    implements $ListingModelCopyWith<$Res> {
  _$ListingModelCopyWithImpl(this._self, this._then);

  final ListingModel _self;
  final $Res Function(ListingModel) _then;

/// Create a copy of ListingModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? sellerId = null,Object? sellerName = null,Object? title = null,Object? price = null,Object? description = null,Object? category = null,Object? condition = null,Object? imageUrls = null,Object? location = null,Object? isActive = null,Object? createdAt = null,Object? viewCount = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sellerId: null == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as String,sellerName: null == sellerName ? _self.sellerName : sellerName // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as ListingCategory,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as ListingCondition,imageUrls: null == imageUrls ? _self.imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,viewCount: freezed == viewCount ? _self.viewCount : viewCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ListingModel].
extension ListingModelPatterns on ListingModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListingModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListingModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListingModel value)  $default,){
final _that = this;
switch (_that) {
case _ListingModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListingModel value)?  $default,){
final _that = this;
switch (_that) {
case _ListingModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String sellerId,  String sellerName,  String title,  double price,  String description,  ListingCategory category,  ListingCondition condition,  List<String> imageUrls,  String location,  bool isActive,  DateTime createdAt,  int? viewCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListingModel() when $default != null:
return $default(_that.id,_that.sellerId,_that.sellerName,_that.title,_that.price,_that.description,_that.category,_that.condition,_that.imageUrls,_that.location,_that.isActive,_that.createdAt,_that.viewCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String sellerId,  String sellerName,  String title,  double price,  String description,  ListingCategory category,  ListingCondition condition,  List<String> imageUrls,  String location,  bool isActive,  DateTime createdAt,  int? viewCount)  $default,) {final _that = this;
switch (_that) {
case _ListingModel():
return $default(_that.id,_that.sellerId,_that.sellerName,_that.title,_that.price,_that.description,_that.category,_that.condition,_that.imageUrls,_that.location,_that.isActive,_that.createdAt,_that.viewCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String sellerId,  String sellerName,  String title,  double price,  String description,  ListingCategory category,  ListingCondition condition,  List<String> imageUrls,  String location,  bool isActive,  DateTime createdAt,  int? viewCount)?  $default,) {final _that = this;
switch (_that) {
case _ListingModel() when $default != null:
return $default(_that.id,_that.sellerId,_that.sellerName,_that.title,_that.price,_that.description,_that.category,_that.condition,_that.imageUrls,_that.location,_that.isActive,_that.createdAt,_that.viewCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListingModel implements ListingModel {
  const _ListingModel({required this.id, required this.sellerId, required this.sellerName, required this.title, required this.price, required this.description, required this.category, required this.condition, final  List<String> imageUrls = const [], required this.location, required this.isActive, required this.createdAt, this.viewCount}): _imageUrls = imageUrls;
  factory _ListingModel.fromJson(Map<String, dynamic> json) => _$ListingModelFromJson(json);

@override final  String id;
@override final  String sellerId;
@override final  String sellerName;
@override final  String title;
@override final  double price;
@override final  String description;
@override final  ListingCategory category;
@override final  ListingCondition condition;
 final  List<String> _imageUrls;
@override@JsonKey() List<String> get imageUrls {
  if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imageUrls);
}

@override final  String location;
@override final  bool isActive;
@override final  DateTime createdAt;
@override final  int? viewCount;

/// Create a copy of ListingModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListingModelCopyWith<_ListingModel> get copyWith => __$ListingModelCopyWithImpl<_ListingModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListingModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListingModel&&(identical(other.id, id) || other.id == id)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId)&&(identical(other.sellerName, sellerName) || other.sellerName == sellerName)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.condition, condition) || other.condition == condition)&&const DeepCollectionEquality().equals(other._imageUrls, _imageUrls)&&(identical(other.location, location) || other.location == location)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.viewCount, viewCount) || other.viewCount == viewCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,sellerId,sellerName,title,price,description,category,condition,const DeepCollectionEquality().hash(_imageUrls),location,isActive,createdAt,viewCount);

@override
String toString() {
  return 'ListingModel(id: $id, sellerId: $sellerId, sellerName: $sellerName, title: $title, price: $price, description: $description, category: $category, condition: $condition, imageUrls: $imageUrls, location: $location, isActive: $isActive, createdAt: $createdAt, viewCount: $viewCount)';
}


}

/// @nodoc
abstract mixin class _$ListingModelCopyWith<$Res> implements $ListingModelCopyWith<$Res> {
  factory _$ListingModelCopyWith(_ListingModel value, $Res Function(_ListingModel) _then) = __$ListingModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String sellerId, String sellerName, String title, double price, String description, ListingCategory category, ListingCondition condition, List<String> imageUrls, String location, bool isActive, DateTime createdAt, int? viewCount
});




}
/// @nodoc
class __$ListingModelCopyWithImpl<$Res>
    implements _$ListingModelCopyWith<$Res> {
  __$ListingModelCopyWithImpl(this._self, this._then);

  final _ListingModel _self;
  final $Res Function(_ListingModel) _then;

/// Create a copy of ListingModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? sellerId = null,Object? sellerName = null,Object? title = null,Object? price = null,Object? description = null,Object? category = null,Object? condition = null,Object? imageUrls = null,Object? location = null,Object? isActive = null,Object? createdAt = null,Object? viewCount = freezed,}) {
  return _then(_ListingModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,sellerId: null == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as String,sellerName: null == sellerName ? _self.sellerName : sellerName // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as ListingCategory,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as ListingCondition,imageUrls: null == imageUrls ? _self._imageUrls : imageUrls // ignore: cast_nullable_to_non_nullable
as List<String>,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,viewCount: freezed == viewCount ? _self.viewCount : viewCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
