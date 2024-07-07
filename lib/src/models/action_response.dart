import 'package:json_annotation/json_annotation.dart';

import 'action.dart';
import 'meta.dart';

part 'action_response.g.dart';

@JsonSerializable()
class ActionResponse {
  ActionResponse({
    required this.action,
  });

  @JsonKey(name: 'action')
  final Action action;

  factory ActionResponse.fromJson(Map<String, dynamic> json) =>
      _$ActionResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ActionResponseToJson(this);
}

@JsonSerializable()
class ActionsResponse {
  ActionsResponse({
    required this.actions,
    required this.meta,
  });

  @JsonKey(name: 'actions')
  final List<Action> actions;

  @JsonKey(name: 'meta')
  final Meta meta;

  factory ActionsResponse.fromJson(Map<String, dynamic> json) =>
      _$ActionsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ActionsResponseToJson(this);
}
