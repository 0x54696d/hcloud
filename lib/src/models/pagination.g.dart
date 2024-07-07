// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pagination _$PaginationFromJson(Map<String, dynamic> json) => Pagination(
      page: (json['page'] as num).toInt(),
      perPage: (json['per_page'] as num).toInt(),
      previousPage: (json['previous_page'] as num?)?.toInt(),
      nextPage: (json['next_page'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt(),
      totalEntries: (json['total_entries'] as num).toInt(),
    );

Map<String, dynamic> _$PaginationToJson(Pagination instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'previous_page': instance.previousPage,
      'next_page': instance.nextPage,
      'last_page': instance.lastPage,
      'total_entries': instance.totalEntries,
    };
