import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_example_type.freezed.dart';

@freezed
class FreezedExampleType<T extends Object> with _$ExampleClass<T> {
  factory FreezedExampleType.example({
    required TypedFnExample<T> callback,
  }) = _Example<T>;
}

typedef TypedFnExample<T> = String Function(T item);
