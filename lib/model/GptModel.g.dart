// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'GptModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GptModel _$$_GptModelFromJson(Map<String, dynamic> json) => _$_GptModel(
      id: json['id'] as String?,
      object: json['object'] as String?,
      created: json['created'] as int?,
      model: json['model'] as String?,
      choices: (json['choices'] as List<dynamic>?)
          ?.map((e) => Choices.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GptModelToJson(_$_GptModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'created': instance.created,
      'model': instance.model,
      'choices': instance.choices,
    };
