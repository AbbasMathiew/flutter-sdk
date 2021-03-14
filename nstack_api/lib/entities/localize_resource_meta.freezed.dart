// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'localize_resource_meta.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LocalizeResourceMeta _$LocalizeResourceMetaFromJson(Map<String, dynamic> json) {
  return _LocalizeResourceMeta.fromJson(json);
}

/// @nodoc
class _$LocalizeResourceMetaTearOff {
  const _$LocalizeResourceMetaTearOff();

// ignore: unused_element
  _LocalizeResourceMeta call({LocalizeLanguage language, Platform platform}) {
    return _LocalizeResourceMeta(
      language: language,
      platform: platform,
    );
  }

// ignore: unused_element
  LocalizeResourceMeta fromJson(Map<String, Object> json) {
    return LocalizeResourceMeta.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LocalizeResourceMeta = _$LocalizeResourceMetaTearOff();

/// @nodoc
mixin _$LocalizeResourceMeta {
  LocalizeLanguage get language;
  Platform get platform;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $LocalizeResourceMetaCopyWith<LocalizeResourceMeta> get copyWith;
}

/// @nodoc
abstract class $LocalizeResourceMetaCopyWith<$Res> {
  factory $LocalizeResourceMetaCopyWith(LocalizeResourceMeta value,
          $Res Function(LocalizeResourceMeta) then) =
      _$LocalizeResourceMetaCopyWithImpl<$Res>;
  $Res call({LocalizeLanguage language, Platform platform});

  $LocalizeLanguageCopyWith<$Res> get language;
  $PlatformCopyWith<$Res> get platform;
}

/// @nodoc
class _$LocalizeResourceMetaCopyWithImpl<$Res>
    implements $LocalizeResourceMetaCopyWith<$Res> {
  _$LocalizeResourceMetaCopyWithImpl(this._value, this._then);

  final LocalizeResourceMeta _value;
  // ignore: unused_field
  final $Res Function(LocalizeResourceMeta) _then;

  @override
  $Res call({
    Object language = freezed,
    Object platform = freezed,
  }) {
    return _then(_value.copyWith(
      language:
          language == freezed ? _value.language : language as LocalizeLanguage,
      platform: platform == freezed ? _value.platform : platform as Platform,
    ));
  }

  @override
  $LocalizeLanguageCopyWith<$Res> get language {
    if (_value.language == null) {
      return null;
    }
    return $LocalizeLanguageCopyWith<$Res>(_value.language, (value) {
      return _then(_value.copyWith(language: value));
    });
  }

  @override
  $PlatformCopyWith<$Res> get platform {
    if (_value.platform == null) {
      return null;
    }
    return $PlatformCopyWith<$Res>(_value.platform, (value) {
      return _then(_value.copyWith(platform: value));
    });
  }
}

/// @nodoc
abstract class _$LocalizeResourceMetaCopyWith<$Res>
    implements $LocalizeResourceMetaCopyWith<$Res> {
  factory _$LocalizeResourceMetaCopyWith(_LocalizeResourceMeta value,
          $Res Function(_LocalizeResourceMeta) then) =
      __$LocalizeResourceMetaCopyWithImpl<$Res>;
  @override
  $Res call({LocalizeLanguage language, Platform platform});

  @override
  $LocalizeLanguageCopyWith<$Res> get language;
  @override
  $PlatformCopyWith<$Res> get platform;
}

/// @nodoc
class __$LocalizeResourceMetaCopyWithImpl<$Res>
    extends _$LocalizeResourceMetaCopyWithImpl<$Res>
    implements _$LocalizeResourceMetaCopyWith<$Res> {
  __$LocalizeResourceMetaCopyWithImpl(
      _LocalizeResourceMeta _value, $Res Function(_LocalizeResourceMeta) _then)
      : super(_value, (v) => _then(v as _LocalizeResourceMeta));

  @override
  _LocalizeResourceMeta get _value => super._value as _LocalizeResourceMeta;

  @override
  $Res call({
    Object language = freezed,
    Object platform = freezed,
  }) {
    return _then(_LocalizeResourceMeta(
      language:
          language == freezed ? _value.language : language as LocalizeLanguage,
      platform: platform == freezed ? _value.platform : platform as Platform,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LocalizeResourceMeta implements _LocalizeResourceMeta {
  const _$_LocalizeResourceMeta({this.language, this.platform});

  factory _$_LocalizeResourceMeta.fromJson(Map<String, dynamic> json) =>
      _$_$_LocalizeResourceMetaFromJson(json);

  @override
  final LocalizeLanguage language;
  @override
  final Platform platform;

  @override
  String toString() {
    return 'LocalizeResourceMeta(language: $language, platform: $platform)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocalizeResourceMeta &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.platform, platform) ||
                const DeepCollectionEquality()
                    .equals(other.platform, platform)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(platform);

  @JsonKey(ignore: true)
  @override
  _$LocalizeResourceMetaCopyWith<_LocalizeResourceMeta> get copyWith =>
      __$LocalizeResourceMetaCopyWithImpl<_LocalizeResourceMeta>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LocalizeResourceMetaToJson(this);
  }
}

abstract class _LocalizeResourceMeta implements LocalizeResourceMeta {
  const factory _LocalizeResourceMeta(
      {LocalizeLanguage language, Platform platform}) = _$_LocalizeResourceMeta;

  factory _LocalizeResourceMeta.fromJson(Map<String, dynamic> json) =
      _$_LocalizeResourceMeta.fromJson;

  @override
  LocalizeLanguage get language;
  @override
  Platform get platform;
  @override
  @JsonKey(ignore: true)
  _$LocalizeResourceMetaCopyWith<_LocalizeResourceMeta> get copyWith;
}
