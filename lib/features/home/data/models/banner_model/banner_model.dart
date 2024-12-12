import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_model.g.dart';

@JsonSerializable()
class BannerModel {
  final String title;
  final String description;
  final String image;
  final String startDate;
  final String endDate;

  BannerModel(
      {required this.title,
      required this.description,
      required this.image,
      required this.startDate,
      required this.endDate});

  @JsonKey(includeFromJson: false, includeToJson: false)
  late final String bannerId;
  @JsonKey(includeFromJson: false, includeToJson: false)
  late final bool isActive;

  factory BannerModel.fromJson(Map<String, dynamic> json) =>
      _$BannerModelFromJson(json);

  Map<String, dynamic> toJson() => _$BannerModelToJson(this);
}
