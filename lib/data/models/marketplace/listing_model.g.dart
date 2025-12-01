// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ListingModel _$ListingModelFromJson(Map json) => $checkedCreate(
  '_ListingModel',
  json,
  ($checkedConvert) {
    final val = _ListingModel(
      id: $checkedConvert('id', (v) => v as String),
      sellerId: $checkedConvert('seller_id', (v) => v as String),
      sellerName: $checkedConvert('seller_name', (v) => v as String),
      title: $checkedConvert('title', (v) => v as String),
      price: $checkedConvert('price', (v) => (v as num).toDouble()),
      description: $checkedConvert('description', (v) => v as String),
      category: $checkedConvert(
        'category',
        (v) => $enumDecode(_$ListingCategoryEnumMap, v),
      ),
      condition: $checkedConvert(
        'condition',
        (v) => $enumDecode(_$ListingConditionEnumMap, v),
      ),
      imageUrls: $checkedConvert(
        'image_urls',
        (v) =>
            (v as List<dynamic>?)?.map((e) => e as String).toList() ?? const [],
      ),
      location: $checkedConvert('location', (v) => v as String),
      isActive: $checkedConvert('is_active', (v) => v as bool),
      createdAt: $checkedConvert(
        'created_at',
        (v) => DateTime.parse(v as String),
      ),
      viewCount: $checkedConvert('view_count', (v) => (v as num?)?.toInt()),
    );
    return val;
  },
  fieldKeyMap: const {
    'sellerId': 'seller_id',
    'sellerName': 'seller_name',
    'imageUrls': 'image_urls',
    'isActive': 'is_active',
    'createdAt': 'created_at',
    'viewCount': 'view_count',
  },
);

Map<String, dynamic> _$ListingModelToJson(_ListingModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'seller_id': instance.sellerId,
      'seller_name': instance.sellerName,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'category': _$ListingCategoryEnumMap[instance.category]!,
      'condition': _$ListingConditionEnumMap[instance.condition]!,
      'image_urls': instance.imageUrls,
      'location': instance.location,
      'is_active': instance.isActive,
      'created_at': instance.createdAt.toIso8601String(),
      'view_count': instance.viewCount,
    };

const _$ListingCategoryEnumMap = {
  ListingCategory.books: 'books',
  ListingCategory.electronics: 'electronics',
  ListingCategory.furniture: 'furniture',
  ListingCategory.clothing: 'clothing',
  ListingCategory.sports: 'sports',
  ListingCategory.other: 'other',
};

const _$ListingConditionEnumMap = {
  ListingCondition.new_item: 'new_item',
  ListingCondition.like_new: 'like_new',
  ListingCondition.good: 'good',
  ListingCondition.fair: 'fair',
  ListingCondition.poor: 'poor',
};
