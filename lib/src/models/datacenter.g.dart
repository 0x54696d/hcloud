// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datacenter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datacenter _$DatacenterFromJson(Map<String, dynamic> json) => Datacenter(
      id: (json['id'] as num).toInt(),
      description: json['description'] as String,
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      name: json['name'] as String,
      serverTypes:
          ServerTypes.fromJson(json['server_types'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DatacenterToJson(Datacenter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'location': instance.location,
      'name': instance.name,
      'server_types': instance.serverTypes,
    };

ServerTypes _$ServerTypesFromJson(Map<String, dynamic> json) => ServerTypes(
      available: (json['available'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      availableForMigration: (json['available_for_migration'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      supported: (json['supported'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$ServerTypesToJson(ServerTypes instance) =>
    <String, dynamic>{
      'available': instance.available,
      'available_for_migration': instance.availableForMigration,
      'supported': instance.supported,
    };
