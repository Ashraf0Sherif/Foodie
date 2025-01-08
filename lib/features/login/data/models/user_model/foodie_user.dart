import 'package:freezed_annotation/freezed_annotation.dart';

import 'address.dart';

part 'foodie_user.g.dart';

@JsonSerializable()
class FoodieUser {
  final int id;
  final String firstName;
  final String lastName;
  final String email;
  final String phoneNumber;
  final List<Address> address;

  FoodieUser({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phoneNumber,
    required this.address,
  });

  factory FoodieUser.fromJson(Map<String, dynamic> json) =>
      _$FoodieUserFromJson(json);

  Map<String, dynamic> toJson() => _$FoodieUserToJson(this);
}
