import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laugh1/app/modules/home/widgets/shimmer.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sizer/sizer.dart';

class Content extends StatelessWidget {
  const Content({Key? key, required this.image}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {},
            child: Hero(
                tag: image,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: image,
                    imageBuilder: (context, imageProvider) => Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    placeholder: (context, url) => Container(
                      height: 40.h,
                      child: Shimmer.fromColors(
                        baseColor: (Get.isDarkMode
                            ? Colors.grey[800]
                            : Colors.grey[300])!,
                        highlightColor: (Get.isDarkMode
                            ? Colors.grey[500]!
                            : Colors.grey[100])!,
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                            )
                          ],
                        ),
                      ),
                    ),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                )),
          ),
        ),
      ],
    );
  }
}
