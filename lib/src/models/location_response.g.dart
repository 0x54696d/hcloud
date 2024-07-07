// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationResponse _$LocationResponseFromJson(Map<String, dynamic> json) =>
    LocationResponse(
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LocationResponseToJson(LocationResponse instance) =>
    <String, dynamic>{
      'location': instance.location,
    };

LocationsResponse _$LocationsResponseFromJson(Map<String, dynamic> json) =>
    LocationsResponse(
      locations: (json['locations'] as List<dynamic>)
          .map((e) => Location.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LocationsResponseToJson(LocationsResponse instance) =>
    <String, dynamic>{
      'locations': instance.locations,
      'meta': instance.meta,
    };
