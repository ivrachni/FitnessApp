import 'package:fitnessapp/common/color_extension.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  final Map pobj;
  const OnBoardingPage({super.key, required this.pobj});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return SizedBox(
      width: media.width,
      height: media.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Wrap Image in an Expanded widget to control the height
          Align(
            alignment: Alignment.topCenter, // Ensures image starts at the top
            child: Image.asset(
              pobj["image"].toString(),
              width: media.width,
              fit: BoxFit.fitWidth, // Adjust image to fit the screen width
            ),
          ),
          SizedBox(
            height: media.width * 0.1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              pobj["title"].toString(),
              style: TextStyle(
                color: TColor.black,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              pobj["subtitle"].toString(),
              style: TextStyle(
                color: TColor.grey,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
