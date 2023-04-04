import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controller/GptController.dart';

class GptPage extends GetView<GptPageController> {
  const GptPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            // backgroundColor: ,
            title: Text(
              'ChatGpt',
              style: TextStyle(fontSize: 16.sp, color: Colors.black),
            ),
          ),
          body: Stack(
            children: [
              SizedBox(
                  width: 1.sw,
                  height: 1.sh,
                  child: questionListWidget(context: context)),
              loadingWidget()
            ],
          ),
          bottomSheet: questionWidget()),
    );
  }

  //MARK: 질문 내역 위젯
  Widget questionListWidget({required BuildContext context}) {
    return Column(
      children: [
        Expanded(
          child: Container(
            width: 1.sw,
            padding: EdgeInsets.only(
                bottom: 60.h),
            margin: EdgeInsets.only(
                top: 20.h, left: 20.w, right: 20.w, bottom: 10.h),
            child: Obx(() => ListView.builder(
                  itemCount: controller.gptMessage.length,
                  controller: controller.scrollController,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        userQuestionWidget(context: context, index: index),
                        gptAnswerWidget(context: context, index: index)
                      ],
                    );
                  },
                )),
          ),
        )
      ],
    );
  }

  //MARK: User 질문 위젯
  Widget userQuestionWidget(
      {required BuildContext context, required int index}) {
    return Container(
      padding: EdgeInsets.all(10.r),
      margin: EdgeInsets.only(bottom: 10.h),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(10.h)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(6.r),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondaryContainer,
                borderRadius: BorderRadius.circular(10.h)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'User',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                Text(
                  controller.userDate[index],
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 6.h,
          ),
          Text(
            controller.userMessage[index],
            style: TextStyle(
              fontSize: 12.sp,
              color: Theme.of(context).colorScheme.inverseSurface,
            ),
          ),
        ],
      ),
    );
  }

  //MARK: GPT 답변 위젯
  Widget gptAnswerWidget({required BuildContext context, required int index}) {
    return Container(
      padding: EdgeInsets.all(10.r),
      margin: EdgeInsets.only(bottom: 10.h),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(10.h)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.all(6.r),
            decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(10.h)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  controller.gptDate[index],
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  'ChatGPT',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 6.h,
          ),
          Text(
            controller.gptMessage[index],
            style: TextStyle(fontSize: 12.sp, color: Colors.white),
          ),
        ],
      ),
    );
  }

  //MARK: 로딩 위젯
  Widget loadingWidget() {
    return Obx(() => Visibility(
          visible: controller.gptLoaded.value,
          child: Container(
            width: 1.sw,
            height: 1.sh,
            color: Colors.black26,
            child: Center(
              child: Container(
                width: 200.w,
                height: 100.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.h)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircularProgressIndicator(color: Colors.black),
                    SizedBox(
                      height: 20.h,
                    ),
                    const Text('지피티에서 불러오는중입니다...')
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  //MARK: 질문 위젯
  Widget questionWidget() {
    return SafeArea(
      child: Container(
        width: 1.sw,
        height: 48.h,
        margin:
            EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w, bottom: 10.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: TextField(
                controller: controller.textController,
                onChanged: (value) {},
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (controller.textController.text.isNotEmpty) {
                  controller.sendAiPrompt(controller.textController.text);
                }
              },
              child: Text(
                '질문하기',
                style: TextStyle(
                  fontSize: 14.sp,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
