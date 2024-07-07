import 'package:hcloud/src/models/error.dart';
import 'package:json_annotation/json_annotation.dart';

part 'action.g.dart';

/// An [Action] shows the results and progress of asynchronous requests to the API.
@JsonSerializable()
class Action {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'command')
  String command;

  @JsonKey(name: 'status')
  String status;

  @JsonKey(name: 'progress')
  int progress;

  @JsonKey(name: 'started')
  DateTime started;

  @JsonKey(name: 'finished')
  DateTime? finished;

  @JsonKey(name: 'resources')
  List<Resource> resources;

  @JsonKey(name: 'error')
  ErrorResponse? error;

  Action({
    required this.id,
    required this.command,
    required this.status,
    required this.progress,
    required this.started,
    required this.resources,
    this.finished,
    this.error,
  });

  factory Action.fromJson(Map<String, dynamic> json) => _$ActionFromJson(json);
  Map<String, dynamic> toJson() => _$ActionToJson(this);
}

@JsonSerializable()
class Resource {
  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'type')
  String type;

  Resource({required this.id, required this.type});

  factory Resource.fromJson(Map<String, dynamic> json) =>
      _$ResourceFromJson(json);
  Map<String, dynamic> toJson() => _$ResourceToJson(this);
}
