// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RestaurantModel {

 String get id; String get name; String get cuisine; String get address; double get rating; int get reviewCount; String get priceRange;// €, ££, £££
 String? get imageUrl; String? get studentDiscount; double get distanceKm; List<String>? get tags; String? get description;
/// Create a copy of RestaurantModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RestaurantModelCopyWith<RestaurantModel> get copyWith => _$RestaurantModelCopyWithImpl<RestaurantModel>(this as RestaurantModel, _$identity);

  /// Serializes this RestaurantModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RestaurantModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.cuisine, cuisine) || other.cuisine == cuisine)&&(identical(other.address, address) || other.address == address)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.priceRange, priceRange) || other.priceRange == priceRange)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.studentDiscount, studentDiscount) || other.studentDiscount == studentDiscount)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,cuisine,address,rating,reviewCount,priceRange,imageUrl,studentDiscount,distanceKm,const DeepCollectionEquality().hash(tags),description);

@override
String toString() {
  return 'RestaurantModel(id: $id, name: $name, cuisine: $cuisine, address: $address, rating: $rating, reviewCount: $reviewCount, priceRange: $priceRange, imageUrl: $imageUrl, studentDiscount: $studentDiscount, distanceKm: $distanceKm, tags: $tags, description: $description)';
}


}

/// @nodoc
abstract mixin class $RestaurantModelCopyWith<$Res>  {
  factory $RestaurantModelCopyWith(RestaurantModel value, $Res Function(RestaurantModel) _then) = _$RestaurantModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String cuisine, String address, double rating, int reviewCount, String priceRange, String? imageUrl, String? studentDiscount, double distanceKm, List<String>? tags, String? description
});




}
/// @nodoc
class _$RestaurantModelCopyWithImpl<$Res>
    implements $RestaurantModelCopyWith<$Res> {
  _$RestaurantModelCopyWithImpl(this._self, this._then);

  final RestaurantModel _self;
  final $Res Function(RestaurantModel) _then;

/// Create a copy of RestaurantModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? cuisine = null,Object? address = null,Object? rating = null,Object? reviewCount = null,Object? priceRange = null,Object? imageUrl = freezed,Object? studentDiscount = freezed,Object? distanceKm = null,Object? tags = freezed,Object? description = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cuisine: null == cuisine ? _self.cuisine : cuisine // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,priceRange: null == priceRange ? _self.priceRange : priceRange // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,studentDiscount: freezed == studentDiscount ? _self.studentDiscount : studentDiscount // ignore: cast_nullable_to_non_nullable
as String?,distanceKm: null == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RestaurantModel].
extension RestaurantModelPatterns on RestaurantModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RestaurantModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RestaurantModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RestaurantModel value)  $default,){
final _that = this;
switch (_that) {
case _RestaurantModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RestaurantModel value)?  $default,){
final _that = this;
switch (_that) {
case _RestaurantModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String cuisine,  String address,  double rating,  int reviewCount,  String priceRange,  String? imageUrl,  String? studentDiscount,  double distanceKm,  List<String>? tags,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RestaurantModel() when $default != null:
return $default(_that.id,_that.name,_that.cuisine,_that.address,_that.rating,_that.reviewCount,_that.priceRange,_that.imageUrl,_that.studentDiscount,_that.distanceKm,_that.tags,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String cuisine,  String address,  double rating,  int reviewCount,  String priceRange,  String? imageUrl,  String? studentDiscount,  double distanceKm,  List<String>? tags,  String? description)  $default,) {final _that = this;
switch (_that) {
case _RestaurantModel():
return $default(_that.id,_that.name,_that.cuisine,_that.address,_that.rating,_that.reviewCount,_that.priceRange,_that.imageUrl,_that.studentDiscount,_that.distanceKm,_that.tags,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String cuisine,  String address,  double rating,  int reviewCount,  String priceRange,  String? imageUrl,  String? studentDiscount,  double distanceKm,  List<String>? tags,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _RestaurantModel() when $default != null:
return $default(_that.id,_that.name,_that.cuisine,_that.address,_that.rating,_that.reviewCount,_that.priceRange,_that.imageUrl,_that.studentDiscount,_that.distanceKm,_that.tags,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RestaurantModel implements RestaurantModel {
  const _RestaurantModel({required this.id, required this.name, required this.cuisine, required this.address, required this.rating, required this.reviewCount, required this.priceRange, this.imageUrl, this.studentDiscount, required this.distanceKm, final  List<String>? tags, this.description}): _tags = tags;
  factory _RestaurantModel.fromJson(Map<String, dynamic> json) => _$RestaurantModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String cuisine;
@override final  String address;
@override final  double rating;
@override final  int reviewCount;
@override final  String priceRange;
// €, ££, £££
@override final  String? imageUrl;
@override final  String? studentDiscount;
@override final  double distanceKm;
 final  List<String>? _tags;
@override List<String>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? description;

/// Create a copy of RestaurantModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RestaurantModelCopyWith<_RestaurantModel> get copyWith => __$RestaurantModelCopyWithImpl<_RestaurantModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RestaurantModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RestaurantModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.cuisine, cuisine) || other.cuisine == cuisine)&&(identical(other.address, address) || other.address == address)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.priceRange, priceRange) || other.priceRange == priceRange)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.studentDiscount, studentDiscount) || other.studentDiscount == studentDiscount)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,cuisine,address,rating,reviewCount,priceRange,imageUrl,studentDiscount,distanceKm,const DeepCollectionEquality().hash(_tags),description);

@override
String toString() {
  return 'RestaurantModel(id: $id, name: $name, cuisine: $cuisine, address: $address, rating: $rating, reviewCount: $reviewCount, priceRange: $priceRange, imageUrl: $imageUrl, studentDiscount: $studentDiscount, distanceKm: $distanceKm, tags: $tags, description: $description)';
}


}

/// @nodoc
abstract mixin class _$RestaurantModelCopyWith<$Res> implements $RestaurantModelCopyWith<$Res> {
  factory _$RestaurantModelCopyWith(_RestaurantModel value, $Res Function(_RestaurantModel) _then) = __$RestaurantModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String cuisine, String address, double rating, int reviewCount, String priceRange, String? imageUrl, String? studentDiscount, double distanceKm, List<String>? tags, String? description
});




}
/// @nodoc
class __$RestaurantModelCopyWithImpl<$Res>
    implements _$RestaurantModelCopyWith<$Res> {
  __$RestaurantModelCopyWithImpl(this._self, this._then);

  final _RestaurantModel _self;
  final $Res Function(_RestaurantModel) _then;

/// Create a copy of RestaurantModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? cuisine = null,Object? address = null,Object? rating = null,Object? reviewCount = null,Object? priceRange = null,Object? imageUrl = freezed,Object? studentDiscount = freezed,Object? distanceKm = null,Object? tags = freezed,Object? description = freezed,}) {
  return _then(_RestaurantModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,cuisine: null == cuisine ? _self.cuisine : cuisine // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,priceRange: null == priceRange ? _self.priceRange : priceRange // ignore: cast_nullable_to_non_nullable
as String,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,studentDiscount: freezed == studentDiscount ? _self.studentDiscount : studentDiscount // ignore: cast_nullable_to_non_nullable
as String?,distanceKm: null == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$MenuItemModel {

 String get id; String get restaurantId; String get name; double get price; String? get description; String? get imageUrl; bool get isVegetarian; bool get isVegan; List<String>? get allergens;
/// Create a copy of MenuItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MenuItemModelCopyWith<MenuItemModel> get copyWith => _$MenuItemModelCopyWithImpl<MenuItemModel>(this as MenuItemModel, _$identity);

  /// Serializes this MenuItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MenuItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.restaurantId, restaurantId) || other.restaurantId == restaurantId)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.isVegetarian, isVegetarian) || other.isVegetarian == isVegetarian)&&(identical(other.isVegan, isVegan) || other.isVegan == isVegan)&&const DeepCollectionEquality().equals(other.allergens, allergens));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,restaurantId,name,price,description,imageUrl,isVegetarian,isVegan,const DeepCollectionEquality().hash(allergens));

@override
String toString() {
  return 'MenuItemModel(id: $id, restaurantId: $restaurantId, name: $name, price: $price, description: $description, imageUrl: $imageUrl, isVegetarian: $isVegetarian, isVegan: $isVegan, allergens: $allergens)';
}


}

/// @nodoc
abstract mixin class $MenuItemModelCopyWith<$Res>  {
  factory $MenuItemModelCopyWith(MenuItemModel value, $Res Function(MenuItemModel) _then) = _$MenuItemModelCopyWithImpl;
@useResult
$Res call({
 String id, String restaurantId, String name, double price, String? description, String? imageUrl, bool isVegetarian, bool isVegan, List<String>? allergens
});




}
/// @nodoc
class _$MenuItemModelCopyWithImpl<$Res>
    implements $MenuItemModelCopyWith<$Res> {
  _$MenuItemModelCopyWithImpl(this._self, this._then);

  final MenuItemModel _self;
  final $Res Function(MenuItemModel) _then;

/// Create a copy of MenuItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? restaurantId = null,Object? name = null,Object? price = null,Object? description = freezed,Object? imageUrl = freezed,Object? isVegetarian = null,Object? isVegan = null,Object? allergens = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,restaurantId: null == restaurantId ? _self.restaurantId : restaurantId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,isVegetarian: null == isVegetarian ? _self.isVegetarian : isVegetarian // ignore: cast_nullable_to_non_nullable
as bool,isVegan: null == isVegan ? _self.isVegan : isVegan // ignore: cast_nullable_to_non_nullable
as bool,allergens: freezed == allergens ? _self.allergens : allergens // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [MenuItemModel].
extension MenuItemModelPatterns on MenuItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MenuItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MenuItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MenuItemModel value)  $default,){
final _that = this;
switch (_that) {
case _MenuItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MenuItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _MenuItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String restaurantId,  String name,  double price,  String? description,  String? imageUrl,  bool isVegetarian,  bool isVegan,  List<String>? allergens)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MenuItemModel() when $default != null:
return $default(_that.id,_that.restaurantId,_that.name,_that.price,_that.description,_that.imageUrl,_that.isVegetarian,_that.isVegan,_that.allergens);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String restaurantId,  String name,  double price,  String? description,  String? imageUrl,  bool isVegetarian,  bool isVegan,  List<String>? allergens)  $default,) {final _that = this;
switch (_that) {
case _MenuItemModel():
return $default(_that.id,_that.restaurantId,_that.name,_that.price,_that.description,_that.imageUrl,_that.isVegetarian,_that.isVegan,_that.allergens);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String restaurantId,  String name,  double price,  String? description,  String? imageUrl,  bool isVegetarian,  bool isVegan,  List<String>? allergens)?  $default,) {final _that = this;
switch (_that) {
case _MenuItemModel() when $default != null:
return $default(_that.id,_that.restaurantId,_that.name,_that.price,_that.description,_that.imageUrl,_that.isVegetarian,_that.isVegan,_that.allergens);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MenuItemModel implements MenuItemModel {
  const _MenuItemModel({required this.id, required this.restaurantId, required this.name, required this.price, this.description, this.imageUrl, required this.isVegetarian, required this.isVegan, final  List<String>? allergens}): _allergens = allergens;
  factory _MenuItemModel.fromJson(Map<String, dynamic> json) => _$MenuItemModelFromJson(json);

@override final  String id;
@override final  String restaurantId;
@override final  String name;
@override final  double price;
@override final  String? description;
@override final  String? imageUrl;
@override final  bool isVegetarian;
@override final  bool isVegan;
 final  List<String>? _allergens;
@override List<String>? get allergens {
  final value = _allergens;
  if (value == null) return null;
  if (_allergens is EqualUnmodifiableListView) return _allergens;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of MenuItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MenuItemModelCopyWith<_MenuItemModel> get copyWith => __$MenuItemModelCopyWithImpl<_MenuItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MenuItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MenuItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.restaurantId, restaurantId) || other.restaurantId == restaurantId)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.isVegetarian, isVegetarian) || other.isVegetarian == isVegetarian)&&(identical(other.isVegan, isVegan) || other.isVegan == isVegan)&&const DeepCollectionEquality().equals(other._allergens, _allergens));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,restaurantId,name,price,description,imageUrl,isVegetarian,isVegan,const DeepCollectionEquality().hash(_allergens));

@override
String toString() {
  return 'MenuItemModel(id: $id, restaurantId: $restaurantId, name: $name, price: $price, description: $description, imageUrl: $imageUrl, isVegetarian: $isVegetarian, isVegan: $isVegan, allergens: $allergens)';
}


}

/// @nodoc
abstract mixin class _$MenuItemModelCopyWith<$Res> implements $MenuItemModelCopyWith<$Res> {
  factory _$MenuItemModelCopyWith(_MenuItemModel value, $Res Function(_MenuItemModel) _then) = __$MenuItemModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String restaurantId, String name, double price, String? description, String? imageUrl, bool isVegetarian, bool isVegan, List<String>? allergens
});




}
/// @nodoc
class __$MenuItemModelCopyWithImpl<$Res>
    implements _$MenuItemModelCopyWith<$Res> {
  __$MenuItemModelCopyWithImpl(this._self, this._then);

  final _MenuItemModel _self;
  final $Res Function(_MenuItemModel) _then;

/// Create a copy of MenuItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? restaurantId = null,Object? name = null,Object? price = null,Object? description = freezed,Object? imageUrl = freezed,Object? isVegetarian = null,Object? isVegan = null,Object? allergens = freezed,}) {
  return _then(_MenuItemModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,restaurantId: null == restaurantId ? _self.restaurantId : restaurantId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,isVegetarian: null == isVegetarian ? _self.isVegetarian : isVegetarian // ignore: cast_nullable_to_non_nullable
as bool,isVegan: null == isVegan ? _self.isVegan : isVegan // ignore: cast_nullable_to_non_nullable
as bool,allergens: freezed == allergens ? _self._allergens : allergens // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
