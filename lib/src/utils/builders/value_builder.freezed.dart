// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'value_builder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ValueBuilder<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? Function(BuildContext) builder) context,
    required TResult Function(T? Function(Ref<Object?>) builder) ref,
    required TResult Function(T? value) value,
    required TResult Function(T? Function(WidgetRef) builder) widgetRef,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? Function(BuildContext) builder)? context,
    TResult? Function(T? Function(Ref<Object?>) builder)? ref,
    TResult? Function(T? value)? value,
    TResult? Function(T? Function(WidgetRef) builder)? widgetRef,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? Function(BuildContext) builder)? context,
    TResult Function(T? Function(Ref<Object?>) builder)? ref,
    TResult Function(T? value)? value,
    TResult Function(T? Function(WidgetRef) builder)? widgetRef,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValueBuilderContext<T> value) context,
    required TResult Function(_ValueBuilderRef<T> value) ref,
    required TResult Function(_ValueBuilderValue<T> value) value,
    required TResult Function(_ValueBuilderWidgetRef<T> value) widgetRef,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValueBuilderContext<T> value)? context,
    TResult? Function(_ValueBuilderRef<T> value)? ref,
    TResult? Function(_ValueBuilderValue<T> value)? value,
    TResult? Function(_ValueBuilderWidgetRef<T> value)? widgetRef,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValueBuilderContext<T> value)? context,
    TResult Function(_ValueBuilderRef<T> value)? ref,
    TResult Function(_ValueBuilderValue<T> value)? value,
    TResult Function(_ValueBuilderWidgetRef<T> value)? widgetRef,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueBuilderCopyWith<T, $Res> {
  factory $ValueBuilderCopyWith(
          ValueBuilder<T> value, $Res Function(ValueBuilder<T>) then) =
      _$ValueBuilderCopyWithImpl<T, $Res, ValueBuilder<T>>;
}

/// @nodoc
class _$ValueBuilderCopyWithImpl<T, $Res, $Val extends ValueBuilder<T>>
    implements $ValueBuilderCopyWith<T, $Res> {
  _$ValueBuilderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ValueBuilderContextImplCopyWith<T, $Res> {
  factory _$$ValueBuilderContextImplCopyWith(_$ValueBuilderContextImpl<T> value,
          $Res Function(_$ValueBuilderContextImpl<T>) then) =
      __$$ValueBuilderContextImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? Function(BuildContext) builder});
}

/// @nodoc
class __$$ValueBuilderContextImplCopyWithImpl<T, $Res>
    extends _$ValueBuilderCopyWithImpl<T, $Res, _$ValueBuilderContextImpl<T>>
    implements _$$ValueBuilderContextImplCopyWith<T, $Res> {
  __$$ValueBuilderContextImplCopyWithImpl(_$ValueBuilderContextImpl<T> _value,
      $Res Function(_$ValueBuilderContextImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? builder = null,
  }) {
    return _then(_$ValueBuilderContextImpl<T>(
      null == builder
          ? _value.builder
          : builder // ignore: cast_nullable_to_non_nullable
              as T? Function(BuildContext),
    ));
  }
}

/// @nodoc

class _$ValueBuilderContextImpl<T> implements _ValueBuilderContext<T> {
  const _$ValueBuilderContextImpl(this.builder);

  @override
  final T? Function(BuildContext) builder;

  @override
  String toString() {
    return 'ValueBuilder<$T>.context(builder: $builder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueBuilderContextImpl<T> &&
            (identical(other.builder, builder) || other.builder == builder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, builder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueBuilderContextImplCopyWith<T, _$ValueBuilderContextImpl<T>>
      get copyWith => __$$ValueBuilderContextImplCopyWithImpl<T,
          _$ValueBuilderContextImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? Function(BuildContext) builder) context,
    required TResult Function(T? Function(Ref<Object?>) builder) ref,
    required TResult Function(T? value) value,
    required TResult Function(T? Function(WidgetRef) builder) widgetRef,
  }) {
    return context(builder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? Function(BuildContext) builder)? context,
    TResult? Function(T? Function(Ref<Object?>) builder)? ref,
    TResult? Function(T? value)? value,
    TResult? Function(T? Function(WidgetRef) builder)? widgetRef,
  }) {
    return context?.call(builder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? Function(BuildContext) builder)? context,
    TResult Function(T? Function(Ref<Object?>) builder)? ref,
    TResult Function(T? value)? value,
    TResult Function(T? Function(WidgetRef) builder)? widgetRef,
    required TResult orElse(),
  }) {
    if (context != null) {
      return context(builder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValueBuilderContext<T> value) context,
    required TResult Function(_ValueBuilderRef<T> value) ref,
    required TResult Function(_ValueBuilderValue<T> value) value,
    required TResult Function(_ValueBuilderWidgetRef<T> value) widgetRef,
  }) {
    return context(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValueBuilderContext<T> value)? context,
    TResult? Function(_ValueBuilderRef<T> value)? ref,
    TResult? Function(_ValueBuilderValue<T> value)? value,
    TResult? Function(_ValueBuilderWidgetRef<T> value)? widgetRef,
  }) {
    return context?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValueBuilderContext<T> value)? context,
    TResult Function(_ValueBuilderRef<T> value)? ref,
    TResult Function(_ValueBuilderValue<T> value)? value,
    TResult Function(_ValueBuilderWidgetRef<T> value)? widgetRef,
    required TResult orElse(),
  }) {
    if (context != null) {
      return context(this);
    }
    return orElse();
  }
}

abstract class _ValueBuilderContext<T> implements ValueBuilder<T> {
  const factory _ValueBuilderContext(final T? Function(BuildContext) builder) =
      _$ValueBuilderContextImpl<T>;

  T? Function(BuildContext) get builder;
  @JsonKey(ignore: true)
  _$$ValueBuilderContextImplCopyWith<T, _$ValueBuilderContextImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValueBuilderRefImplCopyWith<T, $Res> {
  factory _$$ValueBuilderRefImplCopyWith(_$ValueBuilderRefImpl<T> value,
          $Res Function(_$ValueBuilderRefImpl<T>) then) =
      __$$ValueBuilderRefImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? Function(Ref<Object?>) builder});
}

/// @nodoc
class __$$ValueBuilderRefImplCopyWithImpl<T, $Res>
    extends _$ValueBuilderCopyWithImpl<T, $Res, _$ValueBuilderRefImpl<T>>
    implements _$$ValueBuilderRefImplCopyWith<T, $Res> {
  __$$ValueBuilderRefImplCopyWithImpl(_$ValueBuilderRefImpl<T> _value,
      $Res Function(_$ValueBuilderRefImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? builder = null,
  }) {
    return _then(_$ValueBuilderRefImpl<T>(
      null == builder
          ? _value.builder
          : builder // ignore: cast_nullable_to_non_nullable
              as T? Function(Ref<Object?>),
    ));
  }
}

/// @nodoc

class _$ValueBuilderRefImpl<T> implements _ValueBuilderRef<T> {
  const _$ValueBuilderRefImpl(this.builder);

  @override
  final T? Function(Ref<Object?>) builder;

  @override
  String toString() {
    return 'ValueBuilder<$T>.ref(builder: $builder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueBuilderRefImpl<T> &&
            (identical(other.builder, builder) || other.builder == builder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, builder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueBuilderRefImplCopyWith<T, _$ValueBuilderRefImpl<T>> get copyWith =>
      __$$ValueBuilderRefImplCopyWithImpl<T, _$ValueBuilderRefImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? Function(BuildContext) builder) context,
    required TResult Function(T? Function(Ref<Object?>) builder) ref,
    required TResult Function(T? value) value,
    required TResult Function(T? Function(WidgetRef) builder) widgetRef,
  }) {
    return ref(builder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? Function(BuildContext) builder)? context,
    TResult? Function(T? Function(Ref<Object?>) builder)? ref,
    TResult? Function(T? value)? value,
    TResult? Function(T? Function(WidgetRef) builder)? widgetRef,
  }) {
    return ref?.call(builder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? Function(BuildContext) builder)? context,
    TResult Function(T? Function(Ref<Object?>) builder)? ref,
    TResult Function(T? value)? value,
    TResult Function(T? Function(WidgetRef) builder)? widgetRef,
    required TResult orElse(),
  }) {
    if (ref != null) {
      return ref(builder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValueBuilderContext<T> value) context,
    required TResult Function(_ValueBuilderRef<T> value) ref,
    required TResult Function(_ValueBuilderValue<T> value) value,
    required TResult Function(_ValueBuilderWidgetRef<T> value) widgetRef,
  }) {
    return ref(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValueBuilderContext<T> value)? context,
    TResult? Function(_ValueBuilderRef<T> value)? ref,
    TResult? Function(_ValueBuilderValue<T> value)? value,
    TResult? Function(_ValueBuilderWidgetRef<T> value)? widgetRef,
  }) {
    return ref?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValueBuilderContext<T> value)? context,
    TResult Function(_ValueBuilderRef<T> value)? ref,
    TResult Function(_ValueBuilderValue<T> value)? value,
    TResult Function(_ValueBuilderWidgetRef<T> value)? widgetRef,
    required TResult orElse(),
  }) {
    if (ref != null) {
      return ref(this);
    }
    return orElse();
  }
}

abstract class _ValueBuilderRef<T> implements ValueBuilder<T> {
  const factory _ValueBuilderRef(final T? Function(Ref<Object?>) builder) =
      _$ValueBuilderRefImpl<T>;

  T? Function(Ref<Object?>) get builder;
  @JsonKey(ignore: true)
  _$$ValueBuilderRefImplCopyWith<T, _$ValueBuilderRefImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValueBuilderValueImplCopyWith<T, $Res> {
  factory _$$ValueBuilderValueImplCopyWith(_$ValueBuilderValueImpl<T> value,
          $Res Function(_$ValueBuilderValueImpl<T>) then) =
      __$$ValueBuilderValueImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? value});
}

/// @nodoc
class __$$ValueBuilderValueImplCopyWithImpl<T, $Res>
    extends _$ValueBuilderCopyWithImpl<T, $Res, _$ValueBuilderValueImpl<T>>
    implements _$$ValueBuilderValueImplCopyWith<T, $Res> {
  __$$ValueBuilderValueImplCopyWithImpl(_$ValueBuilderValueImpl<T> _value,
      $Res Function(_$ValueBuilderValueImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$ValueBuilderValueImpl<T>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$ValueBuilderValueImpl<T> implements _ValueBuilderValue<T> {
  const _$ValueBuilderValueImpl(this.value);

  @override
  final T? value;

  @override
  String toString() {
    return 'ValueBuilder<$T>.value(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueBuilderValueImpl<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueBuilderValueImplCopyWith<T, _$ValueBuilderValueImpl<T>>
      get copyWith =>
          __$$ValueBuilderValueImplCopyWithImpl<T, _$ValueBuilderValueImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? Function(BuildContext) builder) context,
    required TResult Function(T? Function(Ref<Object?>) builder) ref,
    required TResult Function(T? value) value,
    required TResult Function(T? Function(WidgetRef) builder) widgetRef,
  }) {
    return value(this.value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? Function(BuildContext) builder)? context,
    TResult? Function(T? Function(Ref<Object?>) builder)? ref,
    TResult? Function(T? value)? value,
    TResult? Function(T? Function(WidgetRef) builder)? widgetRef,
  }) {
    return value?.call(this.value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? Function(BuildContext) builder)? context,
    TResult Function(T? Function(Ref<Object?>) builder)? ref,
    TResult Function(T? value)? value,
    TResult Function(T? Function(WidgetRef) builder)? widgetRef,
    required TResult orElse(),
  }) {
    if (value != null) {
      return value(this.value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValueBuilderContext<T> value) context,
    required TResult Function(_ValueBuilderRef<T> value) ref,
    required TResult Function(_ValueBuilderValue<T> value) value,
    required TResult Function(_ValueBuilderWidgetRef<T> value) widgetRef,
  }) {
    return value(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValueBuilderContext<T> value)? context,
    TResult? Function(_ValueBuilderRef<T> value)? ref,
    TResult? Function(_ValueBuilderValue<T> value)? value,
    TResult? Function(_ValueBuilderWidgetRef<T> value)? widgetRef,
  }) {
    return value?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValueBuilderContext<T> value)? context,
    TResult Function(_ValueBuilderRef<T> value)? ref,
    TResult Function(_ValueBuilderValue<T> value)? value,
    TResult Function(_ValueBuilderWidgetRef<T> value)? widgetRef,
    required TResult orElse(),
  }) {
    if (value != null) {
      return value(this);
    }
    return orElse();
  }
}

abstract class _ValueBuilderValue<T> implements ValueBuilder<T> {
  const factory _ValueBuilderValue(final T? value) = _$ValueBuilderValueImpl<T>;

  T? get value;
  @JsonKey(ignore: true)
  _$$ValueBuilderValueImplCopyWith<T, _$ValueBuilderValueImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValueBuilderWidgetRefImplCopyWith<T, $Res> {
  factory _$$ValueBuilderWidgetRefImplCopyWith(
          _$ValueBuilderWidgetRefImpl<T> value,
          $Res Function(_$ValueBuilderWidgetRefImpl<T>) then) =
      __$$ValueBuilderWidgetRefImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T? Function(WidgetRef) builder});
}

/// @nodoc
class __$$ValueBuilderWidgetRefImplCopyWithImpl<T, $Res>
    extends _$ValueBuilderCopyWithImpl<T, $Res, _$ValueBuilderWidgetRefImpl<T>>
    implements _$$ValueBuilderWidgetRefImplCopyWith<T, $Res> {
  __$$ValueBuilderWidgetRefImplCopyWithImpl(
      _$ValueBuilderWidgetRefImpl<T> _value,
      $Res Function(_$ValueBuilderWidgetRefImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? builder = null,
  }) {
    return _then(_$ValueBuilderWidgetRefImpl<T>(
      null == builder
          ? _value.builder
          : builder // ignore: cast_nullable_to_non_nullable
              as T? Function(WidgetRef),
    ));
  }
}

/// @nodoc

class _$ValueBuilderWidgetRefImpl<T> implements _ValueBuilderWidgetRef<T> {
  const _$ValueBuilderWidgetRefImpl(this.builder);

  @override
  final T? Function(WidgetRef) builder;

  @override
  String toString() {
    return 'ValueBuilder<$T>.widgetRef(builder: $builder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValueBuilderWidgetRefImpl<T> &&
            (identical(other.builder, builder) || other.builder == builder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, builder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValueBuilderWidgetRefImplCopyWith<T, _$ValueBuilderWidgetRefImpl<T>>
      get copyWith => __$$ValueBuilderWidgetRefImplCopyWithImpl<T,
          _$ValueBuilderWidgetRefImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T? Function(BuildContext) builder) context,
    required TResult Function(T? Function(Ref<Object?>) builder) ref,
    required TResult Function(T? value) value,
    required TResult Function(T? Function(WidgetRef) builder) widgetRef,
  }) {
    return widgetRef(builder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T? Function(BuildContext) builder)? context,
    TResult? Function(T? Function(Ref<Object?>) builder)? ref,
    TResult? Function(T? value)? value,
    TResult? Function(T? Function(WidgetRef) builder)? widgetRef,
  }) {
    return widgetRef?.call(builder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T? Function(BuildContext) builder)? context,
    TResult Function(T? Function(Ref<Object?>) builder)? ref,
    TResult Function(T? value)? value,
    TResult Function(T? Function(WidgetRef) builder)? widgetRef,
    required TResult orElse(),
  }) {
    if (widgetRef != null) {
      return widgetRef(builder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ValueBuilderContext<T> value) context,
    required TResult Function(_ValueBuilderRef<T> value) ref,
    required TResult Function(_ValueBuilderValue<T> value) value,
    required TResult Function(_ValueBuilderWidgetRef<T> value) widgetRef,
  }) {
    return widgetRef(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ValueBuilderContext<T> value)? context,
    TResult? Function(_ValueBuilderRef<T> value)? ref,
    TResult? Function(_ValueBuilderValue<T> value)? value,
    TResult? Function(_ValueBuilderWidgetRef<T> value)? widgetRef,
  }) {
    return widgetRef?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ValueBuilderContext<T> value)? context,
    TResult Function(_ValueBuilderRef<T> value)? ref,
    TResult Function(_ValueBuilderValue<T> value)? value,
    TResult Function(_ValueBuilderWidgetRef<T> value)? widgetRef,
    required TResult orElse(),
  }) {
    if (widgetRef != null) {
      return widgetRef(this);
    }
    return orElse();
  }
}

abstract class _ValueBuilderWidgetRef<T> implements ValueBuilder<T> {
  const factory _ValueBuilderWidgetRef(final T? Function(WidgetRef) builder) =
      _$ValueBuilderWidgetRefImpl<T>;

  T? Function(WidgetRef) get builder;
  @JsonKey(ignore: true)
  _$$ValueBuilderWidgetRefImplCopyWith<T, _$ValueBuilderWidgetRefImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
