import 'package:freezed_annotation/freezed_annotation.dart';

import 'address.dart';

part 'foodie_user.g.dart';

@JsonSerializable()
class FoodieUser {
  String firstName;
  String lastName;

  String? phoneNumber;
  List<Address>? address;
  @JsonKey(includeFromJson: false, includeToJson: true)
  late final String id;
  @JsonKey(includeFromJson: false, includeToJson: true)
  late final String email;
  FoodieUser({
    required this.firstName,
    required this.lastName,
    required this.phoneNumber,
    required this.address,
  });

  factory FoodieUser.fromJson(Map<String, dynamic> json) =>
      _$FoodieUserFromJson(json);

  Map<String, dynamic> toJson() => _$FoodieUserToJson(this);

  @override
  String toString() {
    return 'FoodieUser{firstName: $firstName, lastName: $lastName, email: $email, phoneNumber: $phoneNumber, address: $address}';
  }
}
