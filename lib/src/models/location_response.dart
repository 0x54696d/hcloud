import 'package:json_annotation/json_annotation.dart';

import 'meta.dart';
import 'location.dart';

part 'location_response.g.dart';

@JsonSerializable()
class LocationResponse {
  LocationResponse({
    required this.location,
  });

  @JsonKey(name: 'location')
  final Location location;

  factory LocationResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationResponseFromJson(json);
  Map<String, dynamic> toJson() => _$LocationResponseToJson(this);
}

@JsonSerializable()
class LocationsResponse {
  LocationsResponse({
    required this.locations,
    required this.meta,
  });

  @JsonKey(name: 'locations')
  final List<Location> locations;

  @JsonKey(name: 'meta')
  final Meta meta;

  factory LocationsResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$LocationsResponseToJson(this);
}
