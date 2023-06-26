// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class MessengerIcon extends StatefulWidget {
  const MessengerIcon({Key? key}) : super(key: key);

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MessengerIcon> {
  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _isTapped = !_isTapped;
        });
      },
      child: CircleAvatar(
        radius: 15.0,
        backgroundColor:
            _isTapped ? const Color.fromARGB(255, 127, 133, 138) : const Color.fromARGB(115, 238, 235, 235),
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
