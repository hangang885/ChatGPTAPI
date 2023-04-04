import 'package:freezed_annotation/freezed_annotation.dart';
part 'Choices.freezed.dart';
part 'Choices.g.dart';

@freezed
class Choices with _$Choices {
  factory Choices({
    Map<String,dynamic>? message,
    String? finishReason,
    int? index,
  }) = _Choices;

  factory Choices.fromJson(Map<String, dynamic> json) =>
      _$ChoicesFromJson(json);
}