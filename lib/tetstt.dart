import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class Discover extends StatefulWidget {
const Discover({Key? key}) : super(key: key);

@override
State<Discover>  createState() => _Discover();
}

class _Discover extends State<Discover> {

  List imgList = [
    Image.asset('Images/S1.png'),
    Image.asset('Images/S3.png'),
    Image.asset('Images/S2.png'),
  ];

  @override
Widget build(BuildContext context) {
return Container(
  body: Scaffold(
    height: 800,
    width: double.infinity,
  child: CarouselSlider(
      options: CarouselOptions( height: 400,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        scrollDirection: Axis.horizontal,),
      items: [
        MyImageView("assets/images/cold_drinks.png"),
        MyImageView("assets/images/backgroud_top.jpg"),
        MyImageView("assets/images/cold_drinks.png"),
        MyImageView("assets/images/cold_drinks.png"),
        MyImageView("assets/images/cold_drinks.png"),



      ]
  ),
)
    );
  }

}

class MyImageView extends StatelessWidget {

  String imgPath;

  MyImageView(this.imgPath);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 400,
        width: double.infinity,
       // margin: EdgeInsets.symmetric(horizontal: 5),
        child: Center(
          child: Image.asset(imgPath,),
        //  fit: BoxFit.cover,
        )
    );
  }
}