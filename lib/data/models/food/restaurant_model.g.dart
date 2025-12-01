// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RestaurantModel _$RestaurantModelFromJson(Map json) => $checkedCreate(
  '_RestaurantModel',
  json,
  ($checkedConvert) {
    final val = _RestaurantModel(
      id: $checkedConvert('id', (v) => v as String),
      name: $checkedConvert('name', (v) => v as String),
      cuisine: $checkedConvert('cuisine', (v) => v as String),
      address: $checkedConvert('address', (v) => v as String),
      rating: $checkedConvert('rating', (v) => (v as num).toDouble()),
      reviewCount: $checkedConvert('review_count', (v) => (v as num).toInt()),
      priceRange: $checkedConvert('price_range', (v) => v as String),
      imageUrl: $checkedConvert('image_url', (v) => v as String?),
      studentDiscount: $checkedConvert('student_discount', (v) => v as String?),
      distanceKm: $checkedConvert('distance_km', (v) => (v as num).toDouble()),
      tags: $checkedConvert(
        'tags',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      description: $checkedConvert('description', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'reviewCount': 'review_count',
    'priceRange': 'price_range',
    'imageUrl': 'image_url',
    'studentDiscount': 'student_discount',
    'distanceKm': 'distance_km',
  },
);

Map<String, dynamic> _$RestaurantModelToJson(_RestaurantModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cuisine': instance.cuisine,
      'address': instance.address,
      'rating': instance.rating,
      'review_count': instance.reviewCount,
      'price_range': instance.priceRange,
      'image_url': instance.imageUrl,
      'student_discount': instance.studentDiscount,
      'distance_km': instance.distanceKm,
      'tags': instance.tags,
      'description': instance.description,
    };

_MenuItemModel _$MenuItemModelFromJson(Map json) => $checkedCreate(
  '_MenuItemModel',
  json,
  ($checkedConvert) {
    final val = _MenuItemModel(
      id: $checkedConvert('id', (v) => v as String),
      restaurantId: $checkedConvert('restaurant_id', (v) => v as String),
      name: $checkedConvert('name', (v) => v as String),
      price: $checkedConvert('price', (v) => (v as num).toDouble()),
      description: $checkedConvert('description', (v) => v as String?),
      imageUrl: $checkedConvert('image_url', (v) => v as String?),
      isVegetarian: $checkedConvert('is_vegetarian', (v) => v as bool),
      isVegan: $checkedConvert('is_vegan', (v) => v as bool),
      allergens: $checkedConvert(
        'allergens',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'restaurantId': 'restaurant_id',
    'imageUrl': 'image_url',
    'isVegetarian': 'is_vegetarian',
    'isVegan': 'is_vegan',
  },
);

Map<String, dynamic> _$MenuItemModelToJson(_MenuItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'restaurant_id': instance.restaurantId,
      'name': instance.name,
      'price': instance.price,
      'description': instance.description,
      'image_url': instance.imageUrl,
      'is_vegetarian': instance.isVegetarian,
      'is_vegan': instance.isVegan,
      'allergens': instance.allergens,
    };
