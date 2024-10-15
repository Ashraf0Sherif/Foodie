import 'package:json_annotation/json_annotation.dart';

//part 'user.g.dart';

@JsonSerializable()
class UserModel {
  int? id;
  String? name;
  String? email;

  // User({this.id, this.name, this.email, this.gender, this.status});
  //
  // factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  //
  // Map<String, dynamic> toJson() => _$UserToJson(this);
}
