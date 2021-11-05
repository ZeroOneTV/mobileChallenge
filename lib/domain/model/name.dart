
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Name extends Equatable {
  const Name({
    this.personalTitles,
    this.firstName,
    this.lastName
  });

  @JsonKey(name: 'title')
  final String? personalTitles;
  @JsonKey(name: 'first')
  final String? firstName;
  @JsonKey(name: 'last')
  final String? lastName;

  //factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);

  //Map<String, dynamic> toJson() => _$NameToJson(this);

  @override
  List<Object?> get props => throw UnimplementedError();
}