import 'package:freezed_annotation/freezed_annotation.dart';

part 'restaurant_model.freezed.dart';
part 'restaurant_model.g.dart';

@freezed
abstract class RestaurantModel with _$RestaurantModel {
  const factory RestaurantModel({
    required String id,
    required String name,
    required String cuisine,
    required String address,
    required double rating,
    required int reviewCount,
    required String priceRange, // €, ££, £££
    String? imageUrl,
    String? studentDiscount,
    required double distanceKm,
    List<String>? tags,
    String? description,
  }) = _RestaurantModel;

  factory RestaurantModel.fromJson(Map<String, Object?> json) =>
      _$RestaurantModelFromJson(json);
}

@freezed
abstract class MenuItemModel with _$MenuItemModel {
  const factory MenuItemModel({
    required String id,
    required String restaurantId,
    required String name,
    required double price,
    String? description,
    String? imageUrl,
    required bool isVegetarian,
    required bool isVegan,
    List<String>? allergens,
  }) = _MenuItemModel;

  factory MenuItemModel.fromJson(Map<String, Object?> json) =>
      _$MenuItemModelFromJson(json);
}
