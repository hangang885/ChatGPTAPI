// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'GptModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GptModel _$GptModelFromJson(Map<String, dynamic> json) {
  return _GptModel.fromJson(json);
}

/// @nodoc
mixin _$GptModel {
  String? get id => throw _privateConstructorUsedError;
  String? get object => throw _privateConstructorUsedError;
  int? get created => throw _privateConstructorUsedError;
  String? get model => throw _privateConstructorUsedError;
  List<Choices>? get choices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GptModelCopyWith<GptModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GptModelCopyWith<$Res> {
  factory $GptModelCopyWith(GptModel value, $Res Function(GptModel) then) =
      _$GptModelCopyWithImpl<$Res, GptModel>;
  @useResult
  $Res call(
      {String? id,
      String? object,
      int? created,
      String? model,
      List<Choices>? choices});
}

/// @nodoc
class _$GptModelCopyWithImpl<$Res, $Val extends GptModel>
    implements $GptModelCopyWith<$Res> {
  _$GptModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? object = freezed,
    Object? created = freezed,
    Object? model = freezed,
    Object? choices = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      choices: freezed == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<Choices>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GptModelCopyWith<$Res> implements $GptModelCopyWith<$Res> {
  factory _$$_GptModelCopyWith(
          _$_GptModel value, $Res Function(_$_GptModel) then) =
      __$$_GptModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? object,
      int? created,
      String? model,
      List<Choices>? choices});
}

/// @nodoc
class __$$_GptModelCopyWithImpl<$Res>
    extends _$GptModelCopyWithImpl<$Res, _$_GptModel>
    implements _$$_GptModelCopyWith<$Res> {
  __$$_GptModelCopyWithImpl(
      _$_GptModel _value, $Res Function(_$_GptModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? object = freezed,
    Object? created = freezed,
    Object? model = freezed,
    Object? choices = freezed,
  }) {
    return _then(_$_GptModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      object: freezed == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as String?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as int?,
      model: freezed == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String?,
      choices: freezed == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<Choices>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GptModel implements _GptModel {
  _$_GptModel(
      {this.id,
      this.object,
      this.created,
      this.model,
      final List<Choices>? choices})
      : _choices = choices;

  factory _$_GptModel.fromJson(Map<String, dynamic> json) =>
      _$$_GptModelFromJson(json);

  @override
  final String? id;
  @override
  final String? object;
  @override
  final int? created;
  @override
  final String? model;
  final List<Choices>? _choices;
  @override
  List<Choices>? get choices {
    final value = _choices;
    if (value == null) return null;
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GptModel(id: $id, object: $object, created: $created, model: $model, choices: $choices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GptModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.model, model) || other.model == model) &&
            const DeepCollectionEquality().equals(other._choices, _choices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, object, created, model,
      const DeepCollectionEquality().hash(_choices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GptModelCopyWith<_$_GptModel> get copyWith =>
      __$$_GptModelCopyWithImpl<_$_GptModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GptModelToJson(
      this,
    );
  }
}

abstract class _GptModel implements GptModel {
  factory _GptModel(
      {final String? id,
      final String? object,
      final int? created,
      final String? model,
      final List<Choices>? choices}) = _$_GptModel;

  factory _GptModel.fromJson(Map<String, dynamic> json) = _$_GptModel.fromJson;

  @override
  String? get id;
  @override
  String? get object;
  @override
  int? get created;
  @override
  String? get model;
  @override
  List<Choices>? get choices;
  @override
  @JsonKey(ignore: true)
  _$$_GptModelCopyWith<_$_GptModel> get copyWith =>
      throw _privateConstructorUsedError;
}
