import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.g.dart';

@JsonSerializable()
class Address {
  String title;
  String street;
  String? floor;
  String? building;
  String? apartment;

  Address({
    required this.street,
    required this.title,
    this.floor,
    this.building,
    this.apartment,
  });

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
