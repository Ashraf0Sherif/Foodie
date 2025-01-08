import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.g.dart';

@JsonSerializable()
class Address {
  final String street;
  final String city;
  final String country;
  final String floor;
  final String building;
  final String apartment;

  Address({
    required this.street,
    required this.city,
    required this.country,
    required this.floor,
    required this.building,
    required this.apartment,
  });

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
