import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({
    @required this.imageUrl,
    @required this.title,
    @required this.description,
  });
}

final slideList = [
  Slide(
    imageUrl: 'assets/images/mego.png',
    title: 'Ahmed Abd El-Mageed',
    description: 'Android Developer, Rising Senior at STEM 6th of October High School for Boys',
  ),
  Slide(
    imageUrl: 'assets/images/5t5t.png',
    title: 'Omar Khattab',
    description: 'Data Collector, Rising Senior at STEM 6th of October High School for Boys',
  ),
  Slide(
    imageUrl: 'assets/images/about3.png',
    title: 'Amr Sofan',
    description: 'Data Collector, Rising Senior at STEM 6th of October High School for Boys',
  ),
  Slide(
    imageUrl: 'assets/images/lolo.png',
    title: 'Loay Refaat',
    description: 'Graphic Designer, Rising Senior at STEM 6th of October High School for Boys',
  ),
];
