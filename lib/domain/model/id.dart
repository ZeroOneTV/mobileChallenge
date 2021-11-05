
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Id extends Equatable{
  const Id({
    this.name,
    this.value,
  });

  final String? name;
  final String? value;

  //factory Id.fromJson(Map<String, dynamic> json) => _$IdFromJson(json);

  //Map<String, dynamic> toJson() => _$IdToJson(this);

  @override
  List<Object?> get props => throw UnimplementedError();
}