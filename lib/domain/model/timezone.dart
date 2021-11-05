
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class TimeZone extends Equatable{
  const TimeZone({
    this.description,
    this.offset,
  });

  final String? offset;
  final String? description;

  //factory TimeZone.fromJson(Map<String, dynamic> json) => _$TimeZoneFromJson(json);

  //Map<String, dynamic> toJson() => _$TimeZoneToJson(this);

  @override
  List<Object?> get props => throw UnimplementedError();

}