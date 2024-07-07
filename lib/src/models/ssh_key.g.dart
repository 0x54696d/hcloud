// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ssh_key.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SSHKey _$SSHKeyFromJson(Map<String, dynamic> json) => SSHKey(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      fingerprint: json['fingerprint'] as String,
      publicKey: json['public_key'] as String,
      labels: Map<String, String>.from(json['labels'] as Map),
      created: DateTime.parse(json['created'] as String),
    );

Map<String, dynamic> _$SSHKeyToJson(SSHKey instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'fingerprint': instance.fingerprint,
      'public_key': instance.publicKey,
      'labels': instance.labels,
      'created': instance.created.toIso8601String(),
    };
