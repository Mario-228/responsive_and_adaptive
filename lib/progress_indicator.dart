import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProgressIndicator extends StatelessWidget {
  final String os;
  const MyProgressIndicator({super.key, required this.os});

  @override
  Widget build(BuildContext context) {
    if(os=="ios")
    {
      return const CupertinoActivityIndicator();
    }
    else
    {
      return const CircularProgressIndicator();
    }
  }
}