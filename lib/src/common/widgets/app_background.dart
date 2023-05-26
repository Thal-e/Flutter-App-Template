import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app_template/src/common/helpers/size.dart';

List<Widget> appbackground(SizeHelper s, List<Widget> widgets) {
  return [
    SizedBox(
      height: s.hHelper(100),
      width: s.wHelper(100),
      child: Image.asset(
        "image-url-here",
        fit: BoxFit.scaleDown,
        repeat: ImageRepeat.repeatY,
      ),
    ),
    ...widgets,
    SizedBox(
      height: s.hHelper(100),
      width: s.wHelper(100),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: .5, sigmaY: .5),
        child: Container(
          color: Colors.black.withOpacity(.1),
        ),
      ),
    ),
  ];
}
