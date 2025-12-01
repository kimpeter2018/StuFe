import 'package:freezed_annotation/freezed_annotation.dart';

part 'listing_model.freezed.dart';
part 'listing_model.g.dart';

@freezed
abstract class ListingModel with _$ListingModel {
  const factory ListingModel({
    required String id,
    required String sellerId,
    required String sellerName,
    required String title,
    required double price,
    required String description,
    required ListingCategory category,
    required ListingCondition condition,
    @Default([]) List<String> imageUrls,
    required String location,
    required bool isActive,
    required DateTime createdAt,
    int? viewCount,
  }) = _ListingModel;

  factory ListingModel.fromJson(Map<String, Object?> json) =>
      _$ListingModelFromJson(json);
}

enum ListingCategory { books, electronics, furniture, clothing, sports, other }

enum ListingCondition { new_item, like_new, good, fair, poor }
