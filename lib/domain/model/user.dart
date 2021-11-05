
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mobile_challenge/domain/model/dob.dart';
import 'package:mobile_challenge/domain/model/id.dart';
import 'package:mobile_challenge/domain/model/location.dart';
import 'package:mobile_challenge/domain/model/login.dart';
import 'package:mobile_challenge/domain/model/picture.dart';
import 'package:mobile_challenge/domain/model/registered.dart';
import 'package:mobile_challenge/domain/model/street.dart';

import 'name.dart';

@JsonSerializable()
class User extends Equatable{
  const User({
    this.gender,
    this.name,
    this.location,
    this.email,
    this.login,
    this.dob,
    this.registered,
    this.phone,
    this.cell,
    this.id,
    this.picture,
    this.nat,
  });

  final Street? gender;
  final Name? name;
  final Location? location;
  final String? email;
  final Login? login;
  final Dob? dob;
  final Registered? registered;
  final String? phone;
  final String? cell;
  final Id? id;
  final Picture? picture;
  final String? nat;

  //factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  //Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  List<Object?> get props => throw UnimplementedError();
}