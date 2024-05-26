import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';



class start_home extends StatelessWidget {
   start_home({super.key});

  static const List<String> sampleImages = [
    'https://www.magnetomagazine.com/app/uploads/2022/11/2004-Ferrari-Enzo1313588_-scaled.jpg',
    'https://www.magnetomagazine.com/app/uploads/2022/11/2004-Ferrari-Enzo1313588_-scaled.jpg',
    'https://www.magnetomagazine.com/app/uploads/2022/11/2004-Ferrari-Enzo1313588_-scaled.jpg',
    'https://www.magnetomagazine.com/app/uploads/2022/11/2004-Ferrari-Enzo1313588_-scaled.jpg',
    'https://www.magnetomagazine.com/app/uploads/2022/11/2004-Ferrari-Enzo1313588_-scaled.jpg',
    'https://www.magnetomagazine.com/app/uploads/2022/11/2004-Ferrari-Enzo1313588_-scaled.jpg',
    'https://www.magnetomagazine.com/app/uploads/2022/11/2004-Ferrari-Enzo1313588_-scaled.jpg',
    'https://www.magnetomagazine.com/app/uploads/2022/11/2004-Ferrari-Enzo1313588_-scaled.jpg',
    'https://www.magnetomagazine.com/app/uploads/2022/11/2004-Ferrari-Enzo1313588_-scaled.jpg',

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 100,
            ),
            FanCarouselImageSlider(
              imagesLink: sampleImages,
              isAssets: false,
              autoPlay: true,
            ),

          ],
        ),
      ),

    );
  }
}