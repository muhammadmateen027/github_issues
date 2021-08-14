// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pull_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PullRequest _$PullRequestFromJson(Map<String, dynamic> json) {
  return _PullRequest.fromJson(json);
}

/// @nodoc
class _$PullRequestTearOff {
  const _$PullRequestTearOff();

  _PullRequest call(
      {String? url, String? html_url, String? diff_url, String? patch_url}) {
    return _PullRequest(
      url: url,
      html_url: html_url,
      diff_url: diff_url,
      patch_url: patch_url,
    );
  }

  PullRequest fromJson(Map<String, Object> json) {
    return PullRequest.fromJson(json);
  }
}

/// @nodoc
const $PullRequest = _$PullRequestTearOff();

/// @nodoc
mixin _$PullRequest {
  String? get url => throw _privateConstructorUsedError;
  String? get html_url => throw _privateConstructorUsedError;
  String? get diff_url => throw _privateConstructorUsedError;
  String? get patch_url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PullRequestCopyWith<PullRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PullRequestCopyWith<$Res> {
  factory $PullRequestCopyWith(
          PullRequest value, $Res Function(PullRequest) then) =
      _$PullRequestCopyWithImpl<$Res>;
  $Res call(
      {String? url, String? html_url, String? diff_url, String? patch_url});
}

/// @nodoc
class _$PullRequestCopyWithImpl<$Res> implements $PullRequestCopyWith<$Res> {
  _$PullRequestCopyWithImpl(this._value, this._then);

  final PullRequest _value;
  // ignore: unused_field
  final $Res Function(PullRequest) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? html_url = freezed,
    Object? diff_url = freezed,
    Object? patch_url = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      html_url: html_url == freezed
          ? _value.html_url
          : html_url // ignore: cast_nullable_to_non_nullable
              as String?,
      diff_url: diff_url == freezed
          ? _value.diff_url
          : diff_url // ignore: cast_nullable_to_non_nullable
              as String?,
      patch_url: patch_url == freezed
          ? _value.patch_url
          : patch_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PullRequestCopyWith<$Res>
    implements $PullRequestCopyWith<$Res> {
  factory _$PullRequestCopyWith(
          _PullRequest value, $Res Function(_PullRequest) then) =
      __$PullRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? url, String? html_url, String? diff_url, String? patch_url});
}

/// @nodoc
class __$PullRequestCopyWithImpl<$Res> extends _$PullRequestCopyWithImpl<$Res>
    implements _$PullRequestCopyWith<$Res> {
  __$PullRequestCopyWithImpl(
      _PullRequest _value, $Res Function(_PullRequest) _then)
      : super(_value, (v) => _then(v as _PullRequest));

  @override
  _PullRequest get _value => super._value as _PullRequest;

  @override
  $Res call({
    Object? url = freezed,
    Object? html_url = freezed,
    Object? diff_url = freezed,
    Object? patch_url = freezed,
  }) {
    return _then(_PullRequest(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      html_url: html_url == freezed
          ? _value.html_url
          : html_url // ignore: cast_nullable_to_non_nullable
              as String?,
      diff_url: diff_url == freezed
          ? _value.diff_url
          : diff_url // ignore: cast_nullable_to_non_nullable
              as String?,
      patch_url: patch_url == freezed
          ? _value.patch_url
          : patch_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PullRequest implements _PullRequest {
  const _$_PullRequest(
      {this.url, this.html_url, this.diff_url, this.patch_url});

  factory _$_PullRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_PullRequestFromJson(json);

  @override
  final String? url;
  @override
  final String? html_url;
  @override
  final String? diff_url;
  @override
  final String? patch_url;

  @override
  String toString() {
    return 'PullRequest(url: $url, html_url: $html_url, diff_url: $diff_url, patch_url: $patch_url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PullRequest &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.html_url, html_url) ||
                const DeepCollectionEquality()
                    .equals(other.html_url, html_url)) &&
            (identical(other.diff_url, diff_url) ||
                const DeepCollectionEquality()
                    .equals(other.diff_url, diff_url)) &&
            (identical(other.patch_url, patch_url) ||
                const DeepCollectionEquality()
                    .equals(other.patch_url, patch_url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(html_url) ^
      const DeepCollectionEquality().hash(diff_url) ^
      const DeepCollectionEquality().hash(patch_url);

  @JsonKey(ignore: true)
  @override
  _$PullRequestCopyWith<_PullRequest> get copyWith =>
      __$PullRequestCopyWithImpl<_PullRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PullRequestToJson(this);
  }
}

abstract class _PullRequest implements PullRequest {
  const factory _PullRequest(
      {String? url,
      String? html_url,
      String? diff_url,
      String? patch_url}) = _$_PullRequest;

  factory _PullRequest.fromJson(Map<String, dynamic> json) =
      _$_PullRequest.fromJson;

  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  String? get html_url => throw _privateConstructorUsedError;
  @override
  String? get diff_url => throw _privateConstructorUsedError;
  @override
  String? get patch_url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PullRequestCopyWith<_PullRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
