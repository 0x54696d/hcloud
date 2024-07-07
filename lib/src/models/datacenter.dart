import 'package:hcloud/src/models/location.dart';
import 'package:json_annotation/json_annotation.dart';

part 'datacenter.g.dart';

@JsonSerializable()
class Datacenter {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'location')
  Location location;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'server_types')
  ServerTypes serverTypes;

  Datacenter({
    required this.id,
    required this.description,
    required this.location,
    required this.name,
    required this.serverTypes,
  });

  factory Datacenter.fromJson(Map<String, dynamic> json) =>
      _$DatacenterFromJson(json);

  Map<String, dynamic> toJson() => _$DatacenterToJson(this);
}

@JsonSerializable()
class ServerTypes {
  @JsonKey(name: 'available')
  List<int> available;

  @JsonKey(name: 'available_for_migration')
  List<int> availableForMigration;

  @JsonKey(name: 'supported')
  List<int> supported;

  ServerTypes({
    required this.available,
    required this.availableForMigration,
    required this.supported,
  });

  factory ServerTypes.fromJson(Map<String, dynamic> json) =>
      _$ServerTypesFromJson(json);

  Map<String, dynamic> toJson() => _$ServerTypesToJson(this);
}
