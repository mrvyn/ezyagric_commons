import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FeedbackController extends GetxController {
  final _dio = Dio();
  var isLoading = false.obs;
  var data = [].obs;
  Rx<TextEditingController> feedbackTitle = TextEditingController().obs;
  Rx<TextEditingController> feedbackMessage = TextEditingController().obs;
  var formKey = GlobalKey<FormState>().obs;

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> submitData() async {
    if (!formKey.value.currentState!.validate()) return;
    isLoading.value = true;
    Map<String, dynamic> feedback_data = {
      "title": feedbackTitle.value.text,
      "message": feedbackMessage.value.text,
      "user_id": "2"
    };

    print(feedback_data);

    try {
      final response = await _dio.post(
        "http://192.168.10.13:5000/feedbacks/save_feedback", // Replace with your API endpoint
        data: feedback_data,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );
      if (response.statusCode == 200) {
        Get.snackbar("Success", "Your feedback has been successfully sent",
            snackPosition: SnackPosition.BOTTOM);
        feedbackTitle.value.clear();
        feedbackMessage.value.clear();
      } else {
        Get.snackbar("Failed", "Something went wrong",
            snackPosition: SnackPosition.BOTTOM);
      }
      // data.value = response.data;
    } catch (e) {
      // Handle errors
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onClose() {
    feedbackTitle.value.dispose();
    feedbackMessage.value.dispose();
    super.onClose();
  }
}
