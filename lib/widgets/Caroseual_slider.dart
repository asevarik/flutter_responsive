import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../utils/carousel.dart';

final List<Carousel_TitleName> imgtitle = [
  Carousel_TitleName(img: 'assets/images/africa.jpg', title: 'AFRICA'),
  Carousel_TitleName(img: 'assets/images/asia.jpg', title: 'ASIA'),
  Carousel_TitleName(img: 'assets/images/europe.jpg', title: 'EUROPE'),
  Carousel_TitleName(
      img: 'assets/images/south_america.jpg', title: 'SOUTH AMERICA'),
  Carousel_TitleName(img: 'assets/images/australia.jpg', title: 'AUSTRALIA'),
  Carousel_TitleName(img: 'assets/images/antarctica.jpg', title: 'ANTARCTICA'),
];

class ComplicatedImageDemo extends StatelessWidget {
  final screenSize;
  ComplicatedImageDemo({required this.screenSize});

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = imgtitle
        .map((item) => Container(
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.asset(item.img, fit: BoxFit.cover, width: 1000.0),
                      AspectRatio(
                        aspectRatio: 18 / 8,
                        child: Center(
                          child: Text(
                            item.title,
                            style: TextStyle(
                              fontFamily: 'Electrolize',
                              letterSpacing: 8,
                              fontSize: screenSize.width / 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ))
        .toList();
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          aspectRatio: 18 / 8,
          enlargeCenterPage: true,
        ),
        items: imageSliders,
      ),
    );
  }
}
