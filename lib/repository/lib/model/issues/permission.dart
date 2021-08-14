import 'package:freezed_annotation/freezed_annotation.dart';

part 'permission.freezed.dart';
part 'permission.g.dart';

@freezed
class Permission with _$Permission {
  const factory Permission({
    bool? admin,
    bool? push,
    bool? pull,
  }) = _Permission;

  factory Permission.fromJson(Map<String, dynamic> json) => _$PermissionFromJson(json);
}