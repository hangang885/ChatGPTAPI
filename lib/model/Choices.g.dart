// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Choices.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Choices _$$_ChoicesFromJson(Map<String, dynamic> json) => _$_Choices(
      message: json['message'] as Map<String, dynamic>?,
      finishReason: json['finishReason'] as String?,
      index: json['index'] as int?,
    );

Map<String, dynamic> _$$_ChoicesToJson(_$_Choices instance) =>
    <String, dynamic>{
      'message': instance.message,
      'finishReason': instance.finishReason,
      'index': instance.index,
    };
