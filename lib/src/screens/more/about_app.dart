import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../styles/decorations.dart';

void aboutAppBottomSheet() {
  Get.bottomSheet(Container(
    decoration: bottomSheetDecoration,
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
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
          height: 10,
        ),
        const Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.info_outline,
              color: Colors.grey,
            ),
            SizedBox(
              width: 25,
            ),
            Text(
              "About App",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Version: 3.4.138",
          style: TextStyle(
            // fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          "ICT For Agriculture, E-Extension Services, GPS Mapping, Value Chain Digitization, Post Harvest Loss Handling, Ag Tech, Last-Mile Distribution, Soil Testing & Analysis, Crop Insurance Agency, digital Profiling and Agro inputs Distribution",
          style: TextStyle(
            // fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    ),
  ));
}
