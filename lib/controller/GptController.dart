
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:openai/model/GptModel.dart';
import 'package:openai/repository/GptRepository.dart';

class GptPageController extends GetxController {
  TextEditingController textController = TextEditingController();
  ScrollController scrollController = ScrollController();
  GlobalKey key = GlobalKey();

  RxList gptMessage = [].obs;
  RxList gptDate = [].obs;
  RxList userDate = [].obs;
  RxList userMessage = [].obs;
  RxBool gptLoaded = false.obs;
  DateFormat dateFormat = DateFormat('yyyy.MM.dd hh:mm:dd');
  late GptRepository _gptRepository;

  @override
  void onInit() {
    super.onInit();
    _gptRepository = GptRepository();
  }

  sendAiPrompt(message) async {
    try {
      gptLoaded.toggle();
      var data = {
        "model": "gpt-3.5-turbo",
        "messages": [
          {"role": "user", "content": "$message"}
        ]
      };
      GptModel? response = await _gptRepository.gptQuestion(data);
      if (response != null) {
        gptLoaded.toggle();
        textController.clear();
        userMessage.add(message);
        userDate.add(dateFormat.format(DateTime.now()));
        gptDate.add(dateFormat.format(
            DateTime.fromMillisecondsSinceEpoch(response.created! * 1000)));
        gptMessage.add(response.choices![0].message!['content']);
        Future.delayed(const Duration(milliseconds: 500)).then((value) =>
            scrollController.animateTo(
                scrollController.position.maxScrollExtent,
                duration: const Duration(milliseconds: 500),
                curve: Curves.ease));
      }
    } catch (e, stack) {
      log('e $e stack $stack');
      gptLoaded.value = false;
      return null;
    }
  }
}