import 'package:freezed_annotation/freezed_annotation.dart';

import 'Choices.dart';
part 'GptModel.freezed.dart';
part 'GptModel.g.dart';

@freezed
class GptModel with _$GptModel {
  factory GptModel({
    String? id,
    String? object,
    int? created,
    String? model,
    List<Choices>? choices,
  }) = _GptModel;

  factory GptModel.fromJson(Map<String, dynamic> json) =>
      _$GptModelFromJson(json);
}
