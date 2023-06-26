// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';

class Infotitletext extends StatelessWidget {
  final String text;
  const Infotitletext({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:8.0),
      child: Text("$text",style: const TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold,color: Colors.white),),
    );
  }
}

