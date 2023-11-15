import 'package:freezed_annotation/freezed_annotation.dart';
part 'downloads.freezed.dart';
part 'downloads.g.dart';

@freezed
class Downloads with _$Downloads {
  const factory Downloads({
    @JsonKey(name: "image") required String image,
    @JsonKey(name: "title") required String? title,
    @JsonKey(name: 'description') required String? description,
    @JsonKey(name: 'year') required int? year,

  }) = _Downloads;

  factory Downloads.fromJson(Map<String, dynamic> json) =>
      _$DownloadsFromJson(json);
}
