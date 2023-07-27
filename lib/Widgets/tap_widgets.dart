import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Taptype extends StatelessWidget {
  Taptype({super.key, this.name, this.isactive = false});

  String? name;
  bool? isactive;
  void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        margin: EdgeInsets.only(left: 5, right: 5, bottom: 15),
        // width: 60,
        //height: 60,
        decoration: BoxDecoration(
            color: isactive! ? Colors.blue : Colors.white,
            borderRadius: BorderRadius.circular(25)),
        child: Text(
          name!,
          style: TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}
