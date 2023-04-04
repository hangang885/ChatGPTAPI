import 'dart:developer';

import '../util/API.dart';
import '../model/GptModel.dart';

class GptRepository {
  static final GptRepository _instance = GptRepository._internal();

  factory GptRepository() {
    return _instance;
  }

  GptRepository._internal();

  Future<GptModel?> gptQuestion(Map<String, dynamic> data) async {

    try {
      final response = await gptAPI(data);
      return response;
    } catch (e, stack) {
      log('e $e  stack $stack');
      return null;
    }
  }
}
