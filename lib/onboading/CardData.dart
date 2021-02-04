import 'package:flutter/material.dart';


List<List<Color>> gradients = [

  [Color(0xFF9708CC),Color(0xFF43CBFF)],
  [Color(0xFFE2859F),Color(0xFFFCCF31)],
  [Color(0xFF5EFCE8),Color(0xFF736EFE)],
];

var  pageList = [
  PageModel(
    imgUrl: "assets/images/car/1.jpg",
    title: "Por 959",
    body: "集合众多科技与一身百公里时速3.7秒",
      titleGradient:gradients[0]
  ),
  PageModel(
      imgUrl: "assets/images/car/2.jpg",
      title: "LANCIA",
      body: "集合众多科技与一身百公里时速3.7秒",
      titleGradient:gradients[0]
  ),
  PageModel(
      imgUrl: "assets/images/car/3.jpg",
      title: "Por 989",
      body: "集合众多科技与一身百公里时速3.7秒",
      titleGradient:gradients[0]
  ),
];

class PageModel{
  var imgUrl;
  var title;
  var body;
  List<Color> titleGradient  = [];
  PageModel({this.imgUrl, this.title, this.body, this.titleGradient});
}
