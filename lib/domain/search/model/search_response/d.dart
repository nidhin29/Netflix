import 'package:json_annotation/json_annotation.dart';

import 'i.dart';

part 'd.g.dart';

@JsonSerializable()
class D {
  I i;
  String? id;
  String? l;
 
  D({
   required this.i,
    this.id,
    this.l
   
  });

  factory D.fromJson(Map<String, dynamic> json) => _$DFromJson(json);

  Map<String, dynamic> toJson() => _$DToJson(this);
}
