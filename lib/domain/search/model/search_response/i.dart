import 'package:json_annotation/json_annotation.dart';

part 'i.g.dart';

@JsonSerializable()
class I {
 
  String? imageUrl;
 

  I({ this.imageUrl, });

  factory I.fromJson(Map<String, dynamic> json) => _$IFromJson(json);

  Map<String, dynamic> toJson() => _$IToJson(this);
}
