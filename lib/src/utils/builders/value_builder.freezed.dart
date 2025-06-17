// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'value_builder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ValueBuilder<T> {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ValueBuilder<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ValueBuilder<$T>()';
  }
}

/// @nodoc
class $ValueBuilderCopyWith<T, $Res> {
  $ValueBuilderCopyWith(ValueBuilder<T> _, $Res Function(ValueBuilder<T>) __);
}

/// @nodoc

class _ValueBuilderContext<T> implements ValueBuilder<T> {
  const _ValueBuilderContext(this.builder);

  final T? Function(BuildContext context) builder;

  /// Create a copy of ValueBuilder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ValueBuilderContextCopyWith<T, _ValueBuilderContext<T>> get copyWith =>
      __$ValueBuilderContextCopyWithImpl<T, _ValueBuilderContext<T>>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ValueBuilderContext<T> &&
            (identical(other.builder, builder) || other.builder == builder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, builder);

  @override
  String toString() {
    return 'ValueBuilder<$T>.context(builder: $builder)';
  }
}

/// @nodoc
abstract mixin class _$ValueBuilderContextCopyWith<T, $Res>
    implements $ValueBuilderCopyWith<T, $Res> {
  factory _$ValueBuilderContextCopyWith(_ValueBuilderContext<T> value,
          $Res Function(_ValueBuilderContext<T>) _then) =
      __$ValueBuilderContextCopyWithImpl;
  @useResult
  $Res call({T? Function(BuildContext context) builder});
}

/// @nodoc
class __$ValueBuilderContextCopyWithImpl<T, $Res>
    implements _$ValueBuilderContextCopyWith<T, $Res> {
  __$ValueBuilderContextCopyWithImpl(this._self, this._then);

  final _ValueBuilderContext<T> _self;
  final $Res Function(_ValueBuilderContext<T>) _then;

  /// Create a copy of ValueBuilder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? builder = null,
  }) {
    return _then(_ValueBuilderContext<T>(
      null == builder
          ? _self.builder
          : builder // ignore: cast_nullable_to_non_nullable
              as T? Function(BuildContext context),
    ));
  }
}

/// @nodoc

class _ValueBuilderRef<T> implements ValueBuilder<T> {
  const _ValueBuilderRef(this.builder);

  final T? Function(T Function<T>(ProviderListenable<T>) reader) builder;

  /// Create a copy of ValueBuilder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ValueBuilderRefCopyWith<T, _ValueBuilderRef<T>> get copyWith =>
      __$ValueBuilderRefCopyWithImpl<T, _ValueBuilderRef<T>>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ValueBuilderRef<T> &&
            (identical(other.builder, builder) || other.builder == builder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, builder);

  @override
  String toString() {
    return 'ValueBuilder<$T>.ref(builder: $builder)';
  }
}

/// @nodoc
abstract mixin class _$ValueBuilderRefCopyWith<T, $Res>
    implements $ValueBuilderCopyWith<T, $Res> {
  factory _$ValueBuilderRefCopyWith(
          _ValueBuilderRef<T> value, $Res Function(_ValueBuilderRef<T>) _then) =
      __$ValueBuilderRefCopyWithImpl;
  @useResult
  $Res call({T? Function(T Function<T>(ProviderListenable<T>) reader) builder});
}

/// @nodoc
class __$ValueBuilderRefCopyWithImpl<T, $Res>
    implements _$ValueBuilderRefCopyWith<T, $Res> {
  __$ValueBuilderRefCopyWithImpl(this._self, this._then);

  final _ValueBuilderRef<T> _self;
  final $Res Function(_ValueBuilderRef<T>) _then;

  /// Create a copy of ValueBuilder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? builder = null,
  }) {
    return _then(_ValueBuilderRef<T>(
      null == builder
          ? _self.builder
          : builder // ignore: cast_nullable_to_non_nullable
              as T? Function(T Function<T>(ProviderListenable<T>) reader),
    ));
  }
}

/// @nodoc

class _ValueBuilderValue<T> implements ValueBuilder<T> {
  const _ValueBuilderValue(this.value);

  final T? value;

  /// Create a copy of ValueBuilder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ValueBuilderValueCopyWith<T, _ValueBuilderValue<T>> get copyWith =>
      __$ValueBuilderValueCopyWithImpl<T, _ValueBuilderValue<T>>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ValueBuilderValue<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  String toString() {
    return 'ValueBuilder<$T>.value(value: $value)';
  }
}

/// @nodoc
abstract mixin class _$ValueBuilderValueCopyWith<T, $Res>
    implements $ValueBuilderCopyWith<T, $Res> {
  factory _$ValueBuilderValueCopyWith(_ValueBuilderValue<T> value,
          $Res Function(_ValueBuilderValue<T>) _then) =
      __$ValueBuilderValueCopyWithImpl;
  @useResult
  $Res call({T? value});
}

/// @nodoc
class __$ValueBuilderValueCopyWithImpl<T, $Res>
    implements _$ValueBuilderValueCopyWith<T, $Res> {
  __$ValueBuilderValueCopyWithImpl(this._self, this._then);

  final _ValueBuilderValue<T> _self;
  final $Res Function(_ValueBuilderValue<T>) _then;

  /// Create a copy of ValueBuilder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_ValueBuilderValue<T>(
      freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

// dart format on
