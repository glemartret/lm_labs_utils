// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bubbling_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BubblingState<T> {
  Stream<T> get stream => throw _privateConstructorUsedError;
  List<bool Function(T)> get listeners => throw _privateConstructorUsedError;

  /// Create a copy of BubblingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BubblingStateCopyWith<T, BubblingState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BubblingStateCopyWith<T, $Res> {
  factory $BubblingStateCopyWith(
          BubblingState<T> value, $Res Function(BubblingState<T>) then) =
      _$BubblingStateCopyWithImpl<T, $Res, BubblingState<T>>;
  @useResult
  $Res call({Stream<T> stream, List<bool Function(T)> listeners});
}

/// @nodoc
class _$BubblingStateCopyWithImpl<T, $Res, $Val extends BubblingState<T>>
    implements $BubblingStateCopyWith<T, $Res> {
  _$BubblingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BubblingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stream = null,
    Object? listeners = null,
  }) {
    return _then(_value.copyWith(
      stream: null == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as Stream<T>,
      listeners: null == listeners
          ? _value.listeners
          : listeners // ignore: cast_nullable_to_non_nullable
              as List<bool Function(T)>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BubblingStateImplCopyWith<T, $Res>
    implements $BubblingStateCopyWith<T, $Res> {
  factory _$$BubblingStateImplCopyWith(_$BubblingStateImpl<T> value,
          $Res Function(_$BubblingStateImpl<T>) then) =
      __$$BubblingStateImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({Stream<T> stream, List<bool Function(T)> listeners});
}

/// @nodoc
class __$$BubblingStateImplCopyWithImpl<T, $Res>
    extends _$BubblingStateCopyWithImpl<T, $Res, _$BubblingStateImpl<T>>
    implements _$$BubblingStateImplCopyWith<T, $Res> {
  __$$BubblingStateImplCopyWithImpl(_$BubblingStateImpl<T> _value,
      $Res Function(_$BubblingStateImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BubblingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stream = null,
    Object? listeners = null,
  }) {
    return _then(_$BubblingStateImpl<T>(
      stream: null == stream
          ? _value.stream
          : stream // ignore: cast_nullable_to_non_nullable
              as Stream<T>,
      listeners: null == listeners
          ? _value._listeners
          : listeners // ignore: cast_nullable_to_non_nullable
              as List<bool Function(T)>,
    ));
  }
}

/// @nodoc

class _$BubblingStateImpl<T> implements _BubblingState<T> {
  const _$BubblingStateImpl(
      {required this.stream, final List<bool Function(T)> listeners = const []})
      : _listeners = listeners;

  @override
  final Stream<T> stream;
  final List<bool Function(T)> _listeners;
  @override
  @JsonKey()
  List<bool Function(T)> get listeners {
    if (_listeners is EqualUnmodifiableListView) return _listeners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listeners);
  }

  @override
  String toString() {
    return 'BubblingState<$T>(stream: $stream, listeners: $listeners)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BubblingStateImpl<T> &&
            (identical(other.stream, stream) || other.stream == stream) &&
            const DeepCollectionEquality()
                .equals(other._listeners, _listeners));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, stream, const DeepCollectionEquality().hash(_listeners));

  /// Create a copy of BubblingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BubblingStateImplCopyWith<T, _$BubblingStateImpl<T>> get copyWith =>
      __$$BubblingStateImplCopyWithImpl<T, _$BubblingStateImpl<T>>(
          this, _$identity);
}

abstract class _BubblingState<T> implements BubblingState<T> {
  const factory _BubblingState(
      {required final Stream<T> stream,
      final List<bool Function(T)> listeners}) = _$BubblingStateImpl<T>;

  @override
  Stream<T> get stream;
  @override
  List<bool Function(T)> get listeners;

  /// Create a copy of BubblingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BubblingStateImplCopyWith<T, _$BubblingStateImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
