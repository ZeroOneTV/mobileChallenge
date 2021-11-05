import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Street extends Equatable{
  const Street({
    this.name,
    this.number,
  });

  final String? name;
  final int? number;

  //factory Street.fromJson(Map<String, dynamic> json) => _$StreetFromJson(json);

  //Map<String, dynamic> toJson() => _$StreetToJson(this);

  @override
  List<Object?> get props => throw UnimplementedError();
}