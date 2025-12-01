// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grocery_share_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GroceryShareModel _$GroceryShareModelFromJson(Map json) => $checkedCreate(
  '_GroceryShareModel',
  json,
  ($checkedConvert) {
    final val = _GroceryShareModel(
      id: $checkedConvert('id', (v) => v as String),
      creatorId: $checkedConvert('creator_id', (v) => v as String),
      creatorName: $checkedConvert('creator_name', (v) => v as String),
      itemName: $checkedConvert('item_name', (v) => v as String),
      totalPrice: $checkedConvert('total_price', (v) => (v as num).toDouble()),
      totalQuantity: $checkedConvert(
        'total_quantity',
        (v) => (v as num).toInt(),
      ),
      spotsAvailable: $checkedConvert(
        'spots_available',
        (v) => (v as num).toInt(),
      ),
      spotsTaken: $checkedConvert('spots_taken', (v) => (v as num).toInt()),
      expiryDate: $checkedConvert(
        'expiry_date',
        (v) => DateTime.parse(v as String),
      ),
      imageUrl: $checkedConvert('image_url', (v) => v as String?),
      description: $checkedConvert('description', (v) => v as String?),
      pickupLocation: $checkedConvert('pickup_location', (v) => v as String),
      createdAt: $checkedConvert(
        'created_at',
        (v) => DateTime.parse(v as String),
      ),
      participants: $checkedConvert(
        'participants',
        (v) =>
            (v as List<dynamic>?)
                ?.map(
                  (e) => ParticipantModel.fromJson(
                    Map<String, Object?>.from(e as Map),
                  ),
                )
                .toList() ??
            const [],
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'creatorId': 'creator_id',
    'creatorName': 'creator_name',
    'itemName': 'item_name',
    'totalPrice': 'total_price',
    'totalQuantity': 'total_quantity',
    'spotsAvailable': 'spots_available',
    'spotsTaken': 'spots_taken',
    'expiryDate': 'expiry_date',
    'imageUrl': 'image_url',
    'pickupLocation': 'pickup_location',
    'createdAt': 'created_at',
  },
);

Map<String, dynamic> _$GroceryShareModelToJson(_GroceryShareModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creator_id': instance.creatorId,
      'creator_name': instance.creatorName,
      'item_name': instance.itemName,
      'total_price': instance.totalPrice,
      'total_quantity': instance.totalQuantity,
      'spots_available': instance.spotsAvailable,
      'spots_taken': instance.spotsTaken,
      'expiry_date': instance.expiryDate.toIso8601String(),
      'image_url': instance.imageUrl,
      'description': instance.description,
      'pickup_location': instance.pickupLocation,
      'created_at': instance.createdAt.toIso8601String(),
      'participants': instance.participants.map((e) => e.toJson()).toList(),
    };

_ParticipantModel _$ParticipantModelFromJson(Map json) => $checkedCreate(
  '_ParticipantModel',
  json,
  ($checkedConvert) {
    final val = _ParticipantModel(
      userId: $checkedConvert('user_id', (v) => v as String),
      userName: $checkedConvert('user_name', (v) => v as String),
      quantity: $checkedConvert('quantity', (v) => (v as num).toInt()),
      joinedAt: $checkedConvert(
        'joined_at',
        (v) => DateTime.parse(v as String),
      ),
    );
    return val;
  },
  fieldKeyMap: const {
    'userId': 'user_id',
    'userName': 'user_name',
    'joinedAt': 'joined_at',
  },
);

Map<String, dynamic> _$ParticipantModelToJson(_ParticipantModel instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'user_name': instance.userName,
      'quantity': instance.quantity,
      'joined_at': instance.joinedAt.toIso8601String(),
    };
