import 'package:json_annotation/json_annotation.dart';

part 'ssh_key.g.dart';

@JsonSerializable()

/// A representation of an SSH key in the Hetzner Cloud API.
class SSHKey {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'fingerprint')
  String fingerprint;

  @JsonKey(name: 'public_key')
  String publicKey;

  @JsonKey(name: 'labels')
  Map<String, String> labels;

  @JsonKey(name: 'created')
  DateTime created;

  SSHKey({
    required this.id,
    required this.name,
    required this.fingerprint,
    required this.publicKey,
    required this.labels,
    required this.created,
  });

  factory SSHKey.fromJson(Map<String, dynamic> json) => _$SSHKeyFromJson(json);
  Map<String, dynamic> toJson() => _$SSHKeyToJson(this);
}
