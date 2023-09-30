import 'package:flutter/material.dart';

class myTiles extends StatelessWidget {
  final String imgLoc;
  const myTiles({Key? key, required this.imgLoc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(10)),
      child: Image.asset(
        imgLoc,
        height: 35,
      ),
    );
  }
}
