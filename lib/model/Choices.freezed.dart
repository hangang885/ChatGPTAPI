// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Choices.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Choices _$ChoicesFromJson(Map<String, dynamic> json) {
  return _Choices.fromJson(json);
}

/// @nodoc
mixin _$Choices {
  Map<String, dynamic>? get message => throw _privateConstructorUsedError;
  String? get finishReason => throw _privateConstructorUsedError;
  int? get index => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoicesCopyWith<Choices> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoicesCopyWith<$Res> {
  factory $ChoicesCopyWith(Choices value, $Res Function(Choices) then) =
      _$ChoicesCopyWithImpl<$Res, Choices>;
  @useResult
  $Res call({Map<String, dynamic>? message, String? finishReason, int? index});
}

/// @nodoc
class _$ChoicesCopyWithImpl<$Res, $Val extends Choices>
    implements $ChoicesCopyWith<$Res> {
  _$ChoicesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? finishReason = freezed,
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      finishReason: freezed == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChoicesCopyWith<$Res> implements $ChoicesCopyWith<$Res> {
  factory _$$_ChoicesCopyWith(
          _$_Choices value, $Res Function(_$_Choices) then) =
      __$$_ChoicesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic>? message, String? finishReason, int? index});
}

/// @nodoc
class __$$_ChoicesCopyWithImpl<$Res>
    extends _$ChoicesCopyWithImpl<$Res, _$_Choices>
    implements _$$_ChoicesCopyWith<$Res> {
  __$$_ChoicesCopyWithImpl(_$_Choices _value, $Res Function(_$_Choices) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? finishReason = freezed,
    Object? index = freezed,
  }) {
    return _then(_$_Choices(
      message: freezed == message
          ? _value._message
          : message // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      finishReason: freezed == finishReason
          ? _value.finishReason
          : finishReason // ignore: cast_nullable_to_non_nullable
              as String?,
      index: freezed == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Choices implements _Choices {
  _$_Choices(
      {final Map<String, dynamic>? message, this.finishReason, this.index})
      : _message = message;

  factory _$_Choices.fromJson(Map<String, dynamic> json) =>
      _$$_ChoicesFromJson(json);

  final Map<String, dynamic>? _message;
  @override
  Map<String, dynamic>? get message {
    final value = _message;
    if (value == null) return null;
    if (_message is EqualUnmodifiableMapView) return _message;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? finishReason;
  @override
  final int? index;

  @override
  String toString() {
    return 'Choices(message: $message, finishReason: $finishReason, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Choices &&
            const DeepCollectionEquality().equals(other._message, _message) &&
            (identical(other.finishReason, finishReason) ||
                other.finishReason == finishReason) &&
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_message), finishReason, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChoicesCopyWith<_$_Choices> get copyWith =>
      __$$_ChoicesCopyWithImpl<_$_Choices>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChoicesToJson(
      this,
    );
  }
}

abstract class _Choices implements Choices {
  factory _Choices(
      {final Map<String, dynamic>? message,
      final String? finishReason,
      final int? index}) = _$_Choices;

  factory _Choices.fromJson(Map<String, dynamic> json) = _$_Choices.fromJson;

  @override
  Map<String, dynamic>? get message;
  @override
  String? get finishReason;
  @override
  int? get index;
  @override
  @JsonKey(ignore: true)
  _$$_ChoicesCopyWith<_$_Choices> get copyWith =>
      throw _privateConstructorUsedError;
}
