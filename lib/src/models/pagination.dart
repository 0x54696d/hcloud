import 'package:json_annotation/json_annotation.dart';

part 'pagination.g.dart';

/// A representation of a page in a paginated response.
@JsonSerializable()
class Pagination {
  @JsonKey(name: 'page')
  int page;

  @JsonKey(name: 'per_page')
  int perPage;

  @JsonKey(name: 'previous_page')
  int? previousPage;

  @JsonKey(name: 'next_page')
  int? nextPage;

  @JsonKey(name: 'last_page')
  int? lastPage;

  @JsonKey(name: 'total_entries')
  int totalEntries;

  Pagination({
    required this.page,
    required this.perPage,
    required this.previousPage,
    required this.nextPage,
    required this.lastPage,
    required this.totalEntries,
  });

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
  Map<String, dynamic> toJson() => _$PaginationToJson(this);
}
