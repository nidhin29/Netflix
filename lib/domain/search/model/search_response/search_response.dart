import 'package:json_annotation/json_annotation.dart';

import 'd.dart';

part 'search_response.g.dart';

@JsonSerializable()
class SearchResponse {
  List<D> d;
  String? q;


  SearchResponse({this.d= const [], this.q, });

  factory SearchResponse.fromJson(Map<String, dynamic> json) {
    return _$SearchResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResponseToJson(this);
}
