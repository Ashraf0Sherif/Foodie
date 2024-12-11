import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_model.g.dart';

@JsonSerializable()
class BannerModel {
  final String bannerId;
  final String title;
  final String description;
  final String image;
  final String startDate;
  final String endDate;
  final bool isActive;

  BannerModel(
      {required this.bannerId,
      required this.title,
      required this.description,
      required this.image,
      required this.startDate,
      required this.endDate,
      required this.isActive});

  factory BannerModel.fromJson(Map<String, dynamic> json) =>
      _$BannerModelFromJson(json);

  Map<String, dynamic> toJson() => _$BannerModelToJson(this);
}
