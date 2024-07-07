import 'package:json_annotation/json_annotation.dart';

import 'pagination.dart';

part 'meta.g.dart';

/// A representation of the metadata of a response from the Hetzner Cloud API.
///
/// This class holds a [Pagination] object that represents the metadata of the current page in a paginated response.
@JsonSerializable()
class Meta {
  Pagination pagination;

  Meta({required this.pagination});

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
  Map<String, dynamic> toJson() => _$MetaToJson(this);
}
