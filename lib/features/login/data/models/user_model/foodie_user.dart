import 'package:freezed_annotation/freezed_annotation.dart';

import 'address.dart';

part 'foodie_user.g.dart';

@JsonSerializable()
class FoodieUser {
  int totalOrders;
  double totalSpent;
  String? phoneNumber;
  List<Address>? addresses;
  @JsonKey(includeFromJson: false, includeToJson: true)
  late final String id;
  @JsonKey(includeFromJson: false, includeToJson: true)
  late final String email;
  @JsonKey(includeFromJson: false, includeToJson: true)
  late final String username;
  @JsonKey(includeFromJson: false, includeToJson: true)
  String? avatarUrl;

  FoodieUser(
      {required this.phoneNumber,
      required this.addresses,
      required this.totalOrders,
      required this.totalSpent});

  factory FoodieUser.fromJson(Map<String, dynamic> json) =>
      _$FoodieUserFromJson(json);

  Map<String, dynamic> toJson() => _$FoodieUserToJson(this);

  @override
  String toString() {
    return 'FoodieUser{username: $username, firstName, email: $email, phoneNumber: $phoneNumber, address: $addresses}';
  }
}
