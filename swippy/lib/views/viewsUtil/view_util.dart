import 'package:flutter/material.dart';

class ViewUtil {
  late BuildContext context;

  static Widget statusContainer(String image) {
    return Container(
      width: 62,
      height: 62,
      decoration: BoxDecoration(
        color: const Color(0xffF7B327),
        shape: BoxShape.circle,
        image: DecorationImage(image: AssetImage(image)),
      ),
    );
  }
}
