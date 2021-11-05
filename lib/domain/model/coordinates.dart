
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Coordinates extends Equatable{
  const Coordinates({
    this.latitude,
    this.longitude,
  });

  final String? latitude;
  final String? longitude;

  //factory Coordinates.fromJson(Map<String, dynamic> json) => _$CoordinatesFromJson(json);

  //Map<String, dynamic> toJson() => _$CoordinatesToJson(this);

  @override
  List<Object?> get props => throw UnimplementedError();

}