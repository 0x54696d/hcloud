import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable()
class Location {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'city')
  String city;

  @JsonKey(name: 'country')
  String country;

  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'latitude')
  double latitude;

  @JsonKey(name: 'longitude')
  double longitude;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'network_zone')
  String networkZone;

  Location({
    required this.id,
    required this.city,
    required this.country,
    required this.description,
    required this.latitude,
    required this.longitude,
    required this.name,
    required this.networkZone,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
