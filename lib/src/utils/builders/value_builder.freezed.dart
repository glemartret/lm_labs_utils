// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ValueBuilder<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ValueBuilder<$T>()';
}


}

/// @nodoc
class $ValueBuilderCopyWith<T,$Res>  {
$ValueBuilderCopyWith(ValueBuilder<T> _, $Res Function(ValueBuilder<T>) __);
}


/// Adds pattern-matching-related methods to [ValueBuilder].
extension ValueBuilderPatterns<T> on ValueBuilder<T> {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ValueBuilderContext<T> value)?  context,TResult Function( _ValueBuilderRef<T> value)?  ref,TResult Function( _ValueBuilderValue<T> value)?  value,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ValueBuilderContext() when context != null:
return context(_that);case _ValueBuilderRef() when ref != null:
return ref(_that);case _ValueBuilderValue() when value != null:
return value(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ValueBuilderContext<T> value)  context,required TResult Function( _ValueBuilderRef<T> value)  ref,required TResult Function( _ValueBuilderValue<T> value)  value,}){
final _that = this;
switch (_that) {
case _ValueBuilderContext():
return context(_that);case _ValueBuilderRef():
return ref(_that);case _ValueBuilderValue():
return value(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ValueBuilderContext<T> value)?  context,TResult? Function( _ValueBuilderRef<T> value)?  ref,TResult? Function( _ValueBuilderValue<T> value)?  value,}){
final _that = this;
switch (_that) {
case _ValueBuilderContext() when context != null:
return context(_that);case _ValueBuilderRef() when ref != null:
return ref(_that);case _ValueBuilderValue() when value != null:
return value(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( T? Function(BuildContext context) builder)?  context,TResult Function( T? Function(StateT Function<StateT>(ProviderListenable<StateT>) reader) builder)?  ref,TResult Function( T? value)?  value,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ValueBuilderContext() when context != null:
return context(_that.builder);case _ValueBuilderRef() when ref != null:
return ref(_that.builder);case _ValueBuilderValue() when value != null:
return value(_that.value);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( T? Function(BuildContext context) builder)  context,required TResult Function( T? Function(StateT Function<StateT>(ProviderListenable<StateT>) reader) builder)  ref,required TResult Function( T? value)  value,}) {final _that = this;
switch (_that) {
case _ValueBuilderContext():
return context(_that.builder);case _ValueBuilderRef():
return ref(_that.builder);case _ValueBuilderValue():
return value(_that.value);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( T? Function(BuildContext context) builder)?  context,TResult? Function( T? Function(StateT Function<StateT>(ProviderListenable<StateT>) reader) builder)?  ref,TResult? Function( T? value)?  value,}) {final _that = this;
switch (_that) {
case _ValueBuilderContext() when context != null:
return context(_that.builder);case _ValueBuilderRef() when ref != null:
return ref(_that.builder);case _ValueBuilderValue() when value != null:
return value(_that.value);case _:
  return null;

}
}

}

/// @nodoc


class _ValueBuilderContext<T> implements ValueBuilder<T> {
  const _ValueBuilderContext(this.builder);
  

 final  T? Function(BuildContext context) builder;

/// Create a copy of ValueBuilder
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ValueBuilderContextCopyWith<T, _ValueBuilderContext<T>> get copyWith => __$ValueBuilderContextCopyWithImpl<T, _ValueBuilderContext<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ValueBuilderContext<T>&&(identical(other.builder, builder) || other.builder == builder));
}


@override
int get hashCode => Object.hash(runtimeType,builder);

@override
String toString() {
  return 'ValueBuilder<$T>.context(builder: $builder)';
}


}

/// @nodoc
abstract mixin class _$ValueBuilderContextCopyWith<T,$Res> implements $ValueBuilderCopyWith<T, $Res> {
  factory _$ValueBuilderContextCopyWith(_ValueBuilderContext<T> value, $Res Function(_ValueBuilderContext<T>) _then) = __$ValueBuilderContextCopyWithImpl;
@useResult
$Res call({
 T? Function(BuildContext context) builder
});




}
/// @nodoc
class __$ValueBuilderContextCopyWithImpl<T,$Res>
    implements _$ValueBuilderContextCopyWith<T, $Res> {
  __$ValueBuilderContextCopyWithImpl(this._self, this._then);

  final _ValueBuilderContext<T> _self;
  final $Res Function(_ValueBuilderContext<T>) _then;

/// Create a copy of ValueBuilder
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? builder = null,}) {
  return _then(_ValueBuilderContext<T>(
null == builder ? _self.builder : builder // ignore: cast_nullable_to_non_nullable
as T? Function(BuildContext context),
  ));
}


}

/// @nodoc


class _ValueBuilderRef<T> implements ValueBuilder<T> {
  const _ValueBuilderRef(this.builder);
  

 final  T? Function(StateT Function<StateT>(ProviderListenable<StateT>) reader) builder;

/// Create a copy of ValueBuilder
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ValueBuilderRefCopyWith<T, _ValueBuilderRef<T>> get copyWith => __$ValueBuilderRefCopyWithImpl<T, _ValueBuilderRef<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ValueBuilderRef<T>&&(identical(other.builder, builder) || other.builder == builder));
}


@override
int get hashCode => Object.hash(runtimeType,builder);

@override
String toString() {
  return 'ValueBuilder<$T>.ref(builder: $builder)';
}


}

/// @nodoc
abstract mixin class _$ValueBuilderRefCopyWith<T,$Res> implements $ValueBuilderCopyWith<T, $Res> {
  factory _$ValueBuilderRefCopyWith(_ValueBuilderRef<T> value, $Res Function(_ValueBuilderRef<T>) _then) = __$ValueBuilderRefCopyWithImpl;
@useResult
$Res call({
 T? Function(StateT Function<StateT>(ProviderListenable<StateT>) reader) builder
});




}
/// @nodoc
class __$ValueBuilderRefCopyWithImpl<T,$Res>
    implements _$ValueBuilderRefCopyWith<T, $Res> {
  __$ValueBuilderRefCopyWithImpl(this._self, this._then);

  final _ValueBuilderRef<T> _self;
  final $Res Function(_ValueBuilderRef<T>) _then;

/// Create a copy of ValueBuilder
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? builder = null,}) {
  return _then(_ValueBuilderRef<T>(
null == builder ? _self.builder : builder // ignore: cast_nullable_to_non_nullable
as T? Function(StateT Function<StateT>(ProviderListenable<StateT>) reader),
  ));
}


}

/// @nodoc


class _ValueBuilderValue<T> implements ValueBuilder<T> {
  const _ValueBuilderValue(this.value);
  

 final  T? value;

/// Create a copy of ValueBuilder
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ValueBuilderValueCopyWith<T, _ValueBuilderValue<T>> get copyWith => __$ValueBuilderValueCopyWithImpl<T, _ValueBuilderValue<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ValueBuilderValue<T>&&const DeepCollectionEquality().equals(other.value, value));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'ValueBuilder<$T>.value(value: $value)';
}


}

/// @nodoc
abstract mixin class _$ValueBuilderValueCopyWith<T,$Res> implements $ValueBuilderCopyWith<T, $Res> {
  factory _$ValueBuilderValueCopyWith(_ValueBuilderValue<T> value, $Res Function(_ValueBuilderValue<T>) _then) = __$ValueBuilderValueCopyWithImpl;
@useResult
$Res call({
 T? value
});




}
/// @nodoc
class __$ValueBuilderValueCopyWithImpl<T,$Res>
    implements _$ValueBuilderValueCopyWith<T, $Res> {
  __$ValueBuilderValueCopyWithImpl(this._self, this._then);

  final _ValueBuilderValue<T> _self;
  final $Res Function(_ValueBuilderValue<T>) _then;

/// Create a copy of ValueBuilder
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = freezed,}) {
  return _then(_ValueBuilderValue<T>(
freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}


}

// dart format on
