import 'package:json_annotation/json_annotation.dart';

part 'error.g.dart';

@JsonSerializable()
class ErrorResponse {
  @JsonKey(name: 'code')
  final String code;

  @JsonKey(name: 'message')
  final String message;

  @JsonKey(name: 'details')
  final Map<String, dynamic>? details;

  ErrorResponse({required this.message, required this.code, this.details});

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ErrorResponseToJson(this);
}
