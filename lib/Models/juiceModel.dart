import 'dart:ui';

class JuiceModel {
  final String name;
  final String price;
  final Color color;
  final String? image;

  JuiceModel({
    required this.name,
    required this.price,
    required this.color,
     this.image,
  });
}