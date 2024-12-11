// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerModel _$BannerModelFromJson(Map<String, dynamic> json) => BannerModel(
      bannerId: json['bannerId'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$BannerModelToJson(BannerModel instance) =>
    <String, dynamic>{
      'bannerId': instance.bannerId,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'isActive': instance.isActive,
    };
