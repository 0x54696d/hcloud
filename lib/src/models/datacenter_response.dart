import 'package:json_annotation/json_annotation.dart';

import 'datacenter.dart';
import 'meta.dart';

part 'datacenter_response.g.dart';

@JsonSerializable()
class DatacenterResponse {
  DatacenterResponse({
    required this.datacenter,
  });

  @JsonKey(name: 'datacenter')
  final Datacenter datacenter;

  factory DatacenterResponse.fromJson(Map<String, dynamic> json) =>
      _$DatacenterResponseFromJson(json);
  Map<String, dynamic> toJson() => _$DatacenterResponseToJson(this);
}

@JsonSerializable()
class DatacentersResponse {
  DatacentersResponse({
    required this.datacenters,
    required this.meta,
  });

  @JsonKey(name: 'datacenters')
  final List<Datacenter> datacenters;

  @JsonKey(name: 'meta')
  final Meta meta;

  factory DatacentersResponse.fromJson(Map<String, dynamic> json) =>
      _$DatacentersResponseFromJson(json);
  Map<String, dynamic> toJson() => _$DatacentersResponseToJson(this);
}
