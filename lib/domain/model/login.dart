
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Login extends Equatable{
  const Login({
    this.uuid,
    this.username,
    this.password,
    this.salt,
    this.md5,
    this.sha1,
    this.sha256,
  });

  final String? uuid;
  final String? username;
  final String? password;
  final String? salt;
  final String? md5;
  final String? sha1;
  final String? sha256;

  //factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);

  //Map<String, dynamic> toJson() => _$LoginToJson(this);

  @override
  List<Object?> get props => throw UnimplementedError();

}