
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Registered extends Equatable{
  const Registered({
    this.date,
    this.age,
  });

  final String? date;
  final int? age;

  //factory Registered.fromJson(Map<String, dynamic> json) => _$RegisteredFromJson(json);

  //Map<String, dynamic> toJson() => _$RegisteredToJson(this);

  @override
  List<Object?> get props => throw UnimplementedError();
}