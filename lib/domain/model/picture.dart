
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Picture extends Equatable{
  const Picture({
    this.large,
    this.medium,
    this.thumbnail,
  });

  final String? large;
  final String? medium;
  final String? thumbnail;

  //factory Picture.fromJson(Map<String, dynamic> json) => _$PictureFromJson(json);

  //Map<String, dynamic> toJson() => _$PictureToJson(this);

  @override
  List<Object?> get props => throw UnimplementedError();
}