// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'labels.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Labels _$LabelsFromJson(Map<String, dynamic> json) {
  return _Labels.fromJson(json);
}

/// @nodoc
class _$LabelsTearOff {
  const _$LabelsTearOff();

  _Labels call(
      {int? id,
      String? node_id,
      String? url,
      String? name,
      String? description,
      String? color,
      bool? default_value}) {
    return _Labels(
      id: id,
      node_id: node_id,
      url: url,
      name: name,
      description: description,
      color: color,
      default_value: default_value,
    );
  }

  Labels fromJson(Map<String, Object> json) {
    return Labels.fromJson(json);
  }
}

/// @nodoc
const $Labels = _$LabelsTearOff();

/// @nodoc
mixin _$Labels {
  int? get id => throw _privateConstructorUsedError;
  String? get node_id => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get color => throw _privateConstructorUsedError;
  bool? get default_value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LabelsCopyWith<Labels> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LabelsCopyWith<$Res> {
  factory $LabelsCopyWith(Labels value, $Res Function(Labels) then) =
      _$LabelsCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? node_id,
      String? url,
      String? name,
      String? description,
      String? color,
      bool? default_value});
}

/// @nodoc
class _$LabelsCopyWithImpl<$Res> implements $LabelsCopyWith<$Res> {
  _$LabelsCopyWithImpl(this._value, this._then);

  final Labels _value;
  // ignore: unused_field
  final $Res Function(Labels) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? node_id = freezed,
    Object? url = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? color = freezed,
    Object? default_value = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      node_id: node_id == freezed
          ? _value.node_id
          : node_id // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      default_value: default_value == freezed
          ? _value.default_value
          : default_value // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$LabelsCopyWith<$Res> implements $LabelsCopyWith<$Res> {
  factory _$LabelsCopyWith(_Labels value, $Res Function(_Labels) then) =
      __$LabelsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? node_id,
      String? url,
      String? name,
      String? description,
      String? color,
      bool? default_value});
}

/// @nodoc
class __$LabelsCopyWithImpl<$Res> extends _$LabelsCopyWithImpl<$Res>
    implements _$LabelsCopyWith<$Res> {
  __$LabelsCopyWithImpl(_Labels _value, $Res Function(_Labels) _then)
      : super(_value, (v) => _then(v as _Labels));

  @override
  _Labels get _value => super._value as _Labels;

  @override
  $Res call({
    Object? id = freezed,
    Object? node_id = freezed,
    Object? url = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? color = freezed,
    Object? default_value = freezed,
  }) {
    return _then(_Labels(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      node_id: node_id == freezed
          ? _value.node_id
          : node_id // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      default_value: default_value == freezed
          ? _value.default_value
          : default_value // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Labels implements _Labels {
  const _$_Labels(
      {this.id,
      this.node_id,
      this.url,
      this.name,
      this.description,
      this.color,
      this.default_value});

  factory _$_Labels.fromJson(Map<String, dynamic> json) =>
      _$_$_LabelsFromJson(json);

  @override
  final int? id;
  @override
  final String? node_id;
  @override
  final String? url;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? color;
  @override
  final bool? default_value;

  @override
  String toString() {
    return 'Labels(id: $id, node_id: $node_id, url: $url, name: $name, description: $description, color: $color, default_value: $default_value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Labels &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.node_id, node_id) ||
                const DeepCollectionEquality()
                    .equals(other.node_id, node_id)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.default_value, default_value) ||
                const DeepCollectionEquality()
                    .equals(other.default_value, default_value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(node_id) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(default_value);

  @JsonKey(ignore: true)
  @override
  _$LabelsCopyWith<_Labels> get copyWith =>
      __$LabelsCopyWithImpl<_Labels>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LabelsToJson(this);
  }
}

abstract class _Labels implements Labels {
  const factory _Labels(
      {int? id,
      String? node_id,
      String? url,
      String? name,
      String? description,
      String? color,
      bool? default_value}) = _$_Labels;

  factory _Labels.fromJson(Map<String, dynamic> json) = _$_Labels.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get node_id => throw _privateConstructorUsedError;
  @override
  String? get url => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get description => throw _privateConstructorUsedError;
  @override
  String? get color => throw _privateConstructorUsedError;
  @override
  bool? get default_value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LabelsCopyWith<_Labels> get copyWith => throw _privateConstructorUsedError;
}
