// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'permission.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Permission _$PermissionFromJson(Map<String, dynamic> json) {
  return _Permission.fromJson(json);
}

/// @nodoc
class _$PermissionTearOff {
  const _$PermissionTearOff();

  _Permission call({bool? admin, bool? push, bool? pull}) {
    return _Permission(
      admin: admin,
      push: push,
      pull: pull,
    );
  }

  Permission fromJson(Map<String, Object> json) {
    return Permission.fromJson(json);
  }
}

/// @nodoc
const $Permission = _$PermissionTearOff();

/// @nodoc
mixin _$Permission {
  bool? get admin => throw _privateConstructorUsedError;
  bool? get push => throw _privateConstructorUsedError;
  bool? get pull => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PermissionCopyWith<Permission> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionCopyWith<$Res> {
  factory $PermissionCopyWith(
          Permission value, $Res Function(Permission) then) =
      _$PermissionCopyWithImpl<$Res>;
  $Res call({bool? admin, bool? push, bool? pull});
}

/// @nodoc
class _$PermissionCopyWithImpl<$Res> implements $PermissionCopyWith<$Res> {
  _$PermissionCopyWithImpl(this._value, this._then);

  final Permission _value;
  // ignore: unused_field
  final $Res Function(Permission) _then;

  @override
  $Res call({
    Object? admin = freezed,
    Object? push = freezed,
    Object? pull = freezed,
  }) {
    return _then(_value.copyWith(
      admin: admin == freezed
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as bool?,
      push: push == freezed
          ? _value.push
          : push // ignore: cast_nullable_to_non_nullable
              as bool?,
      pull: pull == freezed
          ? _value.pull
          : pull // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$PermissionCopyWith<$Res> implements $PermissionCopyWith<$Res> {
  factory _$PermissionCopyWith(
          _Permission value, $Res Function(_Permission) then) =
      __$PermissionCopyWithImpl<$Res>;
  @override
  $Res call({bool? admin, bool? push, bool? pull});
}

/// @nodoc
class __$PermissionCopyWithImpl<$Res> extends _$PermissionCopyWithImpl<$Res>
    implements _$PermissionCopyWith<$Res> {
  __$PermissionCopyWithImpl(
      _Permission _value, $Res Function(_Permission) _then)
      : super(_value, (v) => _then(v as _Permission));

  @override
  _Permission get _value => super._value as _Permission;

  @override
  $Res call({
    Object? admin = freezed,
    Object? push = freezed,
    Object? pull = freezed,
  }) {
    return _then(_Permission(
      admin: admin == freezed
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as bool?,
      push: push == freezed
          ? _value.push
          : push // ignore: cast_nullable_to_non_nullable
              as bool?,
      pull: pull == freezed
          ? _value.pull
          : pull // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Permission implements _Permission {
  const _$_Permission({this.admin, this.push, this.pull});

  factory _$_Permission.fromJson(Map<String, dynamic> json) =>
      _$_$_PermissionFromJson(json);

  @override
  final bool? admin;
  @override
  final bool? push;
  @override
  final bool? pull;

  @override
  String toString() {
    return 'Permission(admin: $admin, push: $push, pull: $pull)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Permission &&
            (identical(other.admin, admin) ||
                const DeepCollectionEquality().equals(other.admin, admin)) &&
            (identical(other.push, push) ||
                const DeepCollectionEquality().equals(other.push, push)) &&
            (identical(other.pull, pull) ||
                const DeepCollectionEquality().equals(other.pull, pull)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(admin) ^
      const DeepCollectionEquality().hash(push) ^
      const DeepCollectionEquality().hash(pull);

  @JsonKey(ignore: true)
  @override
  _$PermissionCopyWith<_Permission> get copyWith =>
      __$PermissionCopyWithImpl<_Permission>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PermissionToJson(this);
  }
}

abstract class _Permission implements Permission {
  const factory _Permission({bool? admin, bool? push, bool? pull}) =
      _$_Permission;

  factory _Permission.fromJson(Map<String, dynamic> json) =
      _$_Permission.fromJson;

  @override
  bool? get admin => throw _privateConstructorUsedError;
  @override
  bool? get push => throw _privateConstructorUsedError;
  @override
  bool? get pull => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PermissionCopyWith<_Permission> get copyWith =>
      throw _privateConstructorUsedError;
}
