import 'package:fitnessapp/common/color_extension.dart';
import 'package:fitnessapp/common_widget/on_boarding_page.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int selectPage = 0;
  PageController controller = PageController();

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      selectPage = controller.page?.round() ?? 0;

      setState(() {});
    });
  }

  List pageArray = [
    {
      "title": "Track Your Goals",
      "subtitle":
          "Don't worry if you have trouble determining your goals, We can help you your goals and track ypur goals",
      "image": "assets/images/on_1.png"
    },
    {
      "title": "Get burn",
      "subtitle":
          "Let's keep burning, to achieve your goals, it hurts only temporarily, if you give up now ypu will be in pain forever",
      "image": "assets/images/on_2.png"
    },
    {
      "title": "Eat Well",
      "subtitle":
          "Let's start a healthy lifestyle with us, we can determine your diet every day. Healthy eating is fun",
      "image": "assets/images/on_3.png"
    },
    {
      "title": "Improve Speep\nQuality",
      "subtitle":
          "Improve the quality of your sleep with us, good guality sleep can bring a good mood int the morning",
      "image": "assets/images/on_4.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.white,
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PageView.builder(
            controller: controller,
            itemCount: pageArray.length,
            itemBuilder: (BuildContext context, int index) {
              var pobj = pageArray[index] as Map? ?? {};
              return OnBoardingPage(pobj: pobj);
            },
          ),
          SizedBox(
            width: 120,
            height: 120,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 70,
                  height: 70,
                  child: CircularProgressIndicator(
                    color: TColor.primaryColor1,
                    value: (selectPage + 1) / 4,
                    strokeWidth: 2,
                  ),
                ),
                Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 30),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: TColor.primaryColor1,
                        borderRadius: BorderRadius.circular(35)),
                    child: IconButton(
                      icon: Icon(Icons.navigate_next,
                          color: TColor.white, size: 35),
                      onPressed: () {
                        if (selectPage < 3) {
                          selectPage = selectPage + 1;

                          controller.animateToPage(selectPage,
                              duration: Duration(milliseconds: 600),
                              curve: Curves.bounceInOut);
                          //controller.jumpToPage(selectPage);
                          setState(() {});
                        } else {
                          //Open welcome Page
                        }
                      },
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
