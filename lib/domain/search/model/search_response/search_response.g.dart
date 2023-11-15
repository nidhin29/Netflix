// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResponse _$SearchResponseFromJson(Map<String, dynamic> json) =>
    SearchResponse(
      d: (json['d'] as List<dynamic>?)
              ?.map((e) => D.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      q: json['q'] as String?,
    );

Map<String, dynamic> _$SearchResponseToJson(SearchResponse instance) =>
    <String, dynamic>{
      'd': instance.d,
      'q': instance.q,
    };
