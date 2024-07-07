// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Action _$ActionFromJson(Map<String, dynamic> json) => Action(
      id: (json['id'] as num).toInt(),
      command: json['command'] as String,
      status: json['status'] as String,
      progress: (json['progress'] as num).toInt(),
      started: DateTime.parse(json['started'] as String),
      resources: (json['resources'] as List<dynamic>)
          .map((e) => Resource.fromJson(e as Map<String, dynamic>))
          .toList(),
      finished: json['finished'] == null
          ? null
          : DateTime.parse(json['finished'] as String),
      error: json['error'] == null
          ? null
          : ErrorResponse.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ActionToJson(Action instance) => <String, dynamic>{
      'id': instance.id,
      'command': instance.command,
      'status': instance.status,
      'progress': instance.progress,
      'started': instance.started.toIso8601String(),
      'finished': instance.finished?.toIso8601String(),
      'resources': instance.resources,
      'error': instance.error,
    };

Resource _$ResourceFromJson(Map<String, dynamic> json) => Resource(
      id: (json['id'] as num).toInt(),
      type: json['type'] as String,
    );

Map<String, dynamic> _$ResourceToJson(Resource instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
    };
