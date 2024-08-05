import 'package:dio/dio.dart';
import 'package:get/get.dart';

const String dataAccessApi = "http://192.168.43.102:5000/";

void sendFunction() async {
  // Is internet on
  // response
  // if success
  Map<String, dynamic> feedback_data = {
    "title": "Feedback title",
    "message": "Feedback message"
  };
  var response = await Dio().post(
      "http://192.168.43.102:5000/feedbacks/save_feedback",
      data: feedback_data);
  Get.snackbar("Success", response.data.toString(),
      snackPosition: SnackPosition.BOTTOM);
  print(response);
}
