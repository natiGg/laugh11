import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laugh1/app/modules/home/controllers/home_controller.dart';

import 'package:readmore/readmore.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';
import 'content.dart';

class ShimerPost extends GetView<HomeController> {
  bool _enabled = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        borderRadius: BorderRadius.circular(15.0),
        elevation: 3.0,
        child: Container(
          height: 55.h,
          decoration: BoxDecoration(),
          width: double.infinity,
          child: Expanded(
            child: Shimmer.fromColors(
              baseColor:
                  (Get.isDarkMode ? Colors.grey[800] : Colors.grey[300])!,
              highlightColor:
                  (Get.isDarkMode ? Colors.grey[500]! : Colors.grey[100])!,
              enabled: _enabled,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                  width: 20.0.h,
                                  height: 2.0.h,
                                  decoration: BoxDecoration(
                                      color: Get.isDarkMode
                                          ? Theme.of(context)
                                              .colorScheme
                                              .secondary
                                          : Theme.of(context)
                                              .colorScheme
                                              .primary,
                                      borderRadius: BorderRadius.circular(10))),
                            ],
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Container(
                            height: 1.0,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Center(
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(1.6),
                                  child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Get.isDarkMode
                                          ? Theme.of(context)
                                              .colorScheme
                                              .secondary
                                          : Theme.of(context)
                                              .colorScheme
                                              .primary,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Get.isDarkMode
                                              ? Theme.of(context)
                                                  .colorScheme
                                                  .secondary
                                              : Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                          width: 0.2),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 100.0,
                              height: 8.0,
                              decoration: BoxDecoration(
                                  color: Get.isDarkMode
                                      ? Theme.of(context).colorScheme.secondary
                                      : Theme.of(context).colorScheme.primary,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ],
                        ),
                        SizedBox(height: 15.0),
                        Container(
                            width: double.infinity,
                            height: 8.0,
                            decoration: BoxDecoration(
                                color: Get.isDarkMode
                                    ? Theme.of(context).colorScheme.secondary
                                    : Theme.of(context).colorScheme.primary,
                                borderRadius: BorderRadius.circular(10))),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 3.0),
                        ),
                        Container(
                            width: double.infinity,
                            height: 8.0,
                            decoration: BoxDecoration(
                                color: Get.isDarkMode
                                    ? Theme.of(context).colorScheme.secondary
                                    : Theme.of(context).colorScheme.primary,
                                borderRadius: BorderRadius.circular(10))),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 3.0),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: 80.0,
                              height: 8.0,
                              decoration: BoxDecoration(
                                  color: Get.isDarkMode
                                      ? Theme.of(context).colorScheme.secondary
                                      : Theme.of(context).colorScheme.primary,
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                  height: 200.0,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.0),
                                      color: Get.isDarkMode
                                          ? Theme.of(context)
                                              .colorScheme
                                              .secondary
                                          : Theme.of(context)
                                              .colorScheme
                                              .primary)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        // HashTags(),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          height: 1.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
