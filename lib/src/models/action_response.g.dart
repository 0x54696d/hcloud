// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActionResponse _$ActionResponseFromJson(Map<String, dynamic> json) =>
    ActionResponse(
      action: Action.fromJson(json['action'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ActionResponseToJson(ActionResponse instance) =>
    <String, dynamic>{
      'action': instance.action,
    };

ActionsResponse _$ActionsResponseFromJson(Map<String, dynamic> json) =>
    ActionsResponse(
      actions: (json['actions'] as List<dynamic>)
          .map((e) => Action.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ActionsResponseToJson(ActionsResponse instance) =>
    <String, dynamic>{
      'actions': instance.actions,
      'meta': instance.meta,
    };
