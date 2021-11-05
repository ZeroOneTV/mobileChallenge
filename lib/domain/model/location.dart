
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mobile_challenge/domain/model/coordinates.dart';
import 'package:mobile_challenge/domain/model/street.dart';
import 'package:mobile_challenge/domain/model/timezone.dart';

@JsonSerializable()
class Location extends Equatable{
  const Location({
    this.street,
    this.city,
    this.state,
    this.country,
    this.postcode,
    this.coordinates,
    this.timezone,
  });

  final Street? street;
  final String? city;
  final String? state;
  final String? country;
  final int? postcode;
  final Coordinates? coordinates;
  final TimeZone? timezone;

  //factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);

  //Map<String, dynamic> toJson() => _$LocationToJson(this);

  @override
  List<Object?> get props => throw UnimplementedError();
}