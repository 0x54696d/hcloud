import 'package:json_annotation/json_annotation.dart';

import 'meta.dart';
import 'ssh_key.dart';

part 'ssh_key_response.g.dart';

@JsonSerializable()
class SSHKeyResponse {
  SSHKeyResponse({
    required this.sshKey,
  });

  @JsonKey(name: 'ssh_key')
  final SSHKey sshKey;

  factory SSHKeyResponse.fromJson(Map<String, dynamic> json) =>
      _$SSHKeyResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SSHKeyResponseToJson(this);
}

@JsonSerializable()
class SSHKeysResponse {
  SSHKeysResponse({
    required this.sshKeys,
    required this.meta,
  });

  @JsonKey(name: 'ssh_keys')
  final List<SSHKey> sshKeys;

  @JsonKey(name: 'meta')
  final Meta meta;

  factory SSHKeysResponse.fromJson(Map<String, dynamic> json) =>
      _$SSHKeysResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SSHKeysResponseToJson(this);
}
