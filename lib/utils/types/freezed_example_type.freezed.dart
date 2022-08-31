// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'freezed_example_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ExampleClassTearOff {
  const _$ExampleClassTearOff();

  _Example<T> example<T extends Object>({required TypedFnExample<T> callback}) {
    return _Example<T>(
      callback: callback,
    );
  }
}

/// @nodoc
const $ExampleClass = _$ExampleClassTearOff();

/// @nodoc
mixin _$ExampleClass<T extends Object> {
  TypedFnExample<T> get callback => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TypedFnExample<T> callback) example,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TypedFnExample<T> callback)? example,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TypedFnExample<T> callback)? example,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Example<T> value) example,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Example<T> value)? example,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Example<T> value)? example,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExampleClassCopyWith<T, FreezedExampleType<T>> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExampleClassCopyWith<T extends Object, $Res> {
  factory $ExampleClassCopyWith(FreezedExampleType<T> value, $Res Function(FreezedExampleType<T>) then) =
      _$ExampleClassCopyWithImpl<T, $Res>;
  $Res call({TypedFnExample<T> callback});
}

/// @nodoc
class _$ExampleClassCopyWithImpl<T extends Object, $Res> implements $ExampleClassCopyWith<T, $Res> {
  _$ExampleClassCopyWithImpl(this._value, this._then);

  final FreezedExampleType<T> _value;
  // ignore: unused_field
  final $Res Function(FreezedExampleType<T>) _then;

  @override
  $Res call({
    Object? callback = freezed,
  }) {
    return _then(_value.copyWith(
      callback: callback == freezed
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as TypedFnExample<T>,
    ));
  }
}

/// @nodoc
abstract class _$ExampleCopyWith<T extends Object, $Res> implements $ExampleClassCopyWith<T, $Res> {
  factory _$ExampleCopyWith(_Example<T> value, $Res Function(_Example<T>) then) = __$ExampleCopyWithImpl<T, $Res>;
  @override
  $Res call({TypedFnExample<T> callback});
}

/// @nodoc
class __$ExampleCopyWithImpl<T extends Object, $Res> extends _$ExampleClassCopyWithImpl<T, $Res>
    implements _$ExampleCopyWith<T, $Res> {
  __$ExampleCopyWithImpl(_Example<T> _value, $Res Function(_Example<T>) _then)
      : super(_value, (v) => _then(v as _Example<T>));

  @override
  _Example<T> get _value => super._value as _Example<T>;

  @override
  $Res call({
    Object? callback = freezed,
  }) {
    return _then(_Example<T>(
      callback: callback == freezed
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as TypedFnExample<T>,
    ));
  }
}

/// @nodoc

class _$_Example<T extends Object> implements _Example<T> {
  _$_Example({required this.callback});

  @override
  final TypedFnExample<T> callback;

  @override
  String toString() {
    return 'ExampleClass<$T>.example(callback: $callback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Example<T> &&
            (identical(other.callback, callback) || other.callback == callback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callback);

  @JsonKey(ignore: true)
  @override
  _$ExampleCopyWith<T, _Example<T>> get copyWith => __$ExampleCopyWithImpl<T, _Example<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TypedFnExample<T> callback) example,
  }) {
    return example(callback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TypedFnExample<T> callback)? example,
  }) {
    return example?.call(callback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TypedFnExample<T> callback)? example,
    required TResult orElse(),
  }) {
    if (example != null) {
      return example(callback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Example<T> value) example,
  }) {
    return example(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Example<T> value)? example,
  }) {
    return example?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Example<T> value)? example,
    required TResult orElse(),
  }) {
    if (example != null) {
      return example(this);
    }
    return orElse();
  }
}

abstract class _Example<T extends Object> implements FreezedExampleType<T> {
  factory _Example({required TypedFnExample<T> callback}) = _$_Example<T>;

  @override
  TypedFnExample<T> get callback;
  @override
  @JsonKey(ignore: true)
  _$ExampleCopyWith<T, _Example<T>> get copyWith => throw _privateConstructorUsedError;
}
