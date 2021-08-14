import 'package:freezed_annotation/freezed_annotation.dart';

part 'license.freezed.dart';
part 'license.g.dart';

@freezed
class License with _$License {
  const factory License({
    String? key,
    String? name,
    String? url,
    String? spdx_id,
    String? node_id,
    String? html_url,
  }) = _License;

  factory License.fromJson(Map<String, dynamic> json) => _$LicenseFromJson(json);
}
