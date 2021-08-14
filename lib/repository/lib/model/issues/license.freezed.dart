// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'license.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

License _$LicenseFromJson(Map<String, dynamic> json) {
  return _License.fromJson(json);
}

/// @nodoc
class _$LicenseTearOff {
  const _$LicenseTearOff();

  _License call(
      {String? key,
      String? name,
      String? url,
      String? spdx_id,
      String? node_id,
      String? html_url}) {
    return _License(
      key: key,
      name: name,
      url: url,
      spdx_id: spdx_id,
      node_id: node_id,
      html_url: html_url,
    );
  }

  License fromJson(Map<String, Object> json) {
    return License.fromJson(json);
  }
}

/// @nodoc
const $License = _$LicenseTearOff();

/// @nodoc
mixin _$License {
  String? get key => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get spdx_id => throw _privateConstructorUsedError;
  String? get node_id => throw _privateConstructorUsedError;
  String? get html_url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LicenseCopyWith<License> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LicenseCopyWith<$Res> {
  factory $LicenseCopyWith(License value, $Res Function(License) then) =
      _$LicenseCopyWithImpl<$Res>;
  $Res call(
      {String? key,
      String? name,
      String? url,
      String? spdx_id,
      String? node_id,
      String? html_url});
}

/// @nodoc
class _$LicenseCopyWithImpl<$Res> implements $LicenseCopyWith<$Res> {
  _$LicenseCopyWithImpl(this._value, this._then);

  final License _value;
  // ignore: unused_field
  final $Res Function(License) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? spdx_id = freezed,
    Object? node_id = freezed,
    Object? html_url = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      spdx_id: spdx_id == freezed
          ? _value.spdx_id
          : spdx_id // ignore: cast_nullable_to_non_nullable
              as String?,
      node_id: node_id == freezed
          ? _value.node_id
          : node_id // ignore: cast_nullable_to_non_nullable
              as String?,
      html_url: html_url == freezed
          ? _value.html_url
          : html_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LicenseCopyWith<$Res> implements $LicenseCopyWith<$Res> {
  factory _$LicenseCopyWith(_License value, $Res Function(_License) then) =
      __$LicenseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? key,
      String? name,
      String? url,
      String? spdx_id,
      String? node_id,
      String? html_url});
}

/// @nodoc
class __$LicenseCopyWithImpl<$Res> extends _$LicenseCopyWithImpl<$Res>
    implements _$LicenseCopyWith<$Res> {
  __$LicenseCopyWithImpl(_License _value, $Res Function(_License) _then)
      : super(_value, (v) => _then(v as _License));

  @override
  _License get _value => super._value as _License;

  @override
  $Res call({
    Object? key = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? spdx_id = freezed,
    Object? node_id = freezed,
    Object? html_url = freezed,
  }) {
    return _then(_License(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      spdx_id: spdx_id == freezed
          ? _value.spdx_id
          : spdx_id // ignore: cast_nullable_to_non_nullable
              as String?,
      node_id: node_id == freezed
          ? _value.node_id
          : node_id // ignore: cast_nullable_to_non_nullable
              as String?,
      html_url: html_url == freezed
          ? _value.html_url
          : html_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_License implements _License {
  const _$_License(
      {this.key,
      this.name,
      this.url,
      this.spdx_id,
      this.node_id,
      this.html_url});

  factory _$_License.fromJson(Map<String, dynamic> json) =>
      _$_$_LicenseFromJson(json);

  @override
  final String? key;
  @override
  final String? name;
  @override
  final String? url;
  @override
  final String? spdx_id;
  @override
  final String? node_id;
  @override
  final String? html_url;

  @override
  String toString() {
    return 'License(key: $key, name: $name, url: $url, spdx_id: $spdx_id, node_id: $node_id, html_url: $html_url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _License &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.spdx_id, spdx_id) ||
                const DeepCollectionEquality()
                    .equals(other.spdx_id, spdx_id)) &&
            (identical(other.node_id, node_id) ||
                const DeepCollectionEquality()
                    .equals(other.node_id, node_id)) &&
            (identical(other.html_url, html_url) ||
                const DeepCollectionEquality()
                    .equals(other.html_url, html_url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(spdx_id) ^
      const DeepCollectionEquality().hash(node_id) ^
      const DeepCollectionEquality().hash(html_url);

  @JsonKey(ignore: true)
  @override
  _$LicenseCopyWith<_License> get copyWith =>
      __$LicenseCopyWithImpl<_License>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LicenseToJson(this);
  }
}

abstract class _License implements License {
  const factory _License(
      {String? key,
      String? name,
      String? url,
      String? spdx_id,
      String? node_id,
      String? html_url}) = _$_License;

  factory _License.fromJson(Map<String, dynamic> json) = _$_License.fromJson;

  @override
  String? get key => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  String? get spdx_id => throw _privateConstructorUsedError;
  @override
  String? get node_id => throw _privateConstructorUsedError;
  @override
  String? get html_url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LicenseCopyWith<_License> get copyWith =>
      throw _privateConstructorUsedError;
}
