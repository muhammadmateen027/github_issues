import 'package:freezed_annotation/freezed_annotation.dart';

part 'labels.freezed.dart';
part 'labels.g.dart';

@freezed
class Labels with _$Labels {
  const factory Labels({
    int? id,
    String? node_id,
    String? url,
    String? name,
    String? description,
    String? color,
    bool? default_value,
  }) = _Labels;

  factory Labels.fromJson(Map<String, dynamic> json) => _$LabelsFromJson(json);
}