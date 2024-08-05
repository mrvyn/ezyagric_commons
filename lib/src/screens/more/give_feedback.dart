import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';

import '../../controllers/feedback_controller.dart';
import '../../styles/decorations.dart';
import '../../utils/constants.dart';

void giveFeedbackBottomSheet() {
  Get.bottomSheet(SingleChildScrollView(
    child: Container(
      decoration: bottomSheetDecoration,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25),
        child: Obx(() {
          final FeedbackController controller = Get.put(FeedbackController());

          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      size: 30,
                      Icons.close,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.chat_bubble_outline),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "Give FeedBack",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                key: controller.formKey.value,
                child: Column(
                  children: [
                    TextFormField(
                      decoration:
                          textFormFieldDecoration.copyWith(hintText: "Subject"),
                      controller: controller.feedbackTitle.value,
                      validator: (val) =>
                          val!.isEmpty ? 'Subject is required' : null,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 4,
                        controller: controller.feedbackMessage.value,
                        validator: (val) =>
                            val!.isEmpty ? 'Feedback is required' : null,
                        decoration: textFormFieldDecoration.copyWith(
                            hintText: "Feedback")),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                width: Get.width,
                child: ElevatedButton(
                    style: saveButtonStyle,
                    onPressed: () {
                      controller.submitData();
                    },
                    child: const Text(
                      "Send",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          );
        }),
      ),
    ),
  ));
}
