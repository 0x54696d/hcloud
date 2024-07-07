// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ssh_key_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SSHKeyResponse _$SSHKeyResponseFromJson(Map<String, dynamic> json) =>
    SSHKeyResponse(
      sshKey: SSHKey.fromJson(json['ssh_key'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SSHKeyResponseToJson(SSHKeyResponse instance) =>
    <String, dynamic>{
      'ssh_key': instance.sshKey,
    };

SSHKeysResponse _$SSHKeysResponseFromJson(Map<String, dynamic> json) =>
    SSHKeysResponse(
      sshKeys: (json['ssh_keys'] as List<dynamic>)
          .map((e) => SSHKey.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SSHKeysResponseToJson(SSHKeysResponse instance) =>
    <String, dynamic>{
      'ssh_keys': instance.sshKeys,
      'meta': instance.meta,
    };
