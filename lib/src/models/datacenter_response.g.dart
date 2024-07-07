// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datacenter_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DatacenterResponse _$DatacenterResponseFromJson(Map<String, dynamic> json) =>
    DatacenterResponse(
      datacenter:
          Datacenter.fromJson(json['datacenter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DatacenterResponseToJson(DatacenterResponse instance) =>
    <String, dynamic>{
      'datacenter': instance.datacenter,
    };

DatacentersResponse _$DatacentersResponseFromJson(Map<String, dynamic> json) =>
    DatacentersResponse(
      datacenters: (json['datacenters'] as List<dynamic>)
          .map((e) => Datacenter.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DatacentersResponseToJson(
        DatacentersResponse instance) =>
    <String, dynamic>{
      'datacenters': instance.datacenters,
      'meta': instance.meta,
    };
