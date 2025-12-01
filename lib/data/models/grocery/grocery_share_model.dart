import 'package:freezed_annotation/freezed_annotation.dart';

part 'grocery_share_model.freezed.dart';
part 'grocery_share_model.g.dart';

@freezed
abstract class GroceryShareModel with _$GroceryShareModel {
  const factory GroceryShareModel({
    required String id,
    required String creatorId,
    required String creatorName,
    required String itemName,
    required double totalPrice,
    required int totalQuantity,
    required int spotsAvailable,
    required int spotsTaken,
    required DateTime expiryDate,
    String? imageUrl,
    String? description,
    required String pickupLocation,
    required DateTime createdAt,
    @Default([]) List<ParticipantModel> participants,
  }) = _GroceryShareModel;

  factory GroceryShareModel.fromJson(Map<String, Object?> json) =>
      _$GroceryShareModelFromJson(json);
}

@freezed
abstract class ParticipantModel with _$ParticipantModel {
  const factory ParticipantModel({
    required String userId,
    required String userName,
    required int quantity,
    required DateTime joinedAt,
  }) = _ParticipantModel;

  factory ParticipantModel.fromJson(Map<String, Object?> json) =>
      _$ParticipantModelFromJson(json);
}
