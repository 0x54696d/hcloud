// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      id: (json['id'] as num).toInt(),
      city: json['city'] as String,
      country: json['country'] as String,
      description: json['description'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      name: json['name'] as String,
      networkZone: json['network_zone'] as String,
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'id': instance.id,
      'city': instance.city,
      'country': instance.country,
      'description': instance.description,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'name': instance.name,
      'network_zone': instance.networkZone,
    };
