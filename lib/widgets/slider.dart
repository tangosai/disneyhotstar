import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imgList = [
      'assets/images/image-1.png',
      'assets/images/image-2.png',
      'assets/images/image-3.png',
    ];

    // ignore: avoid_unnecessary_containers
    return Container(
          child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 2.0,
        ),
        items: imgList
            // ignore: avoid_unnecessary_containers
            .map((item) =>  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(item)
                  )
                ),
                // child: Image.asset(item, width: 1000,)
                ),
            )
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   // ignore: avoid_unnecessary_containers
            //   child: Container(
            //     color: Colors.white,
            //         child:Image.asset(item, width: 1000,),
            //       ),
            // )
            )
            .toList(),
      ));
  }
}