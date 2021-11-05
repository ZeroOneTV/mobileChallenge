
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Dob extends Equatable{
  const Dob({
    this.date,
    this.age,
  });

  final String? date;
  final int? age;

  //factory Dob.fromJson(Map<String, dynamic> json) => _$DobFromJson(json);

  //Map<String, dynamic> toJson() => _$DobToJson(this);

  @override
  List<Object?> get props => throw UnimplementedError();

}