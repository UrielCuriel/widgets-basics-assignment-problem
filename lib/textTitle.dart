import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget{
  final String title;

  final titleColor;
  TextTitle({this.title = 'Boring Title',this.titleColor=Colors.black});
  @override
    Widget build(BuildContext context) {
      return Text(title,style: TextStyle(color: titleColor));
    }
}