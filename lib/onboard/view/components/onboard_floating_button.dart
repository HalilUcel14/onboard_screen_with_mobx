import 'package:flutter/material.dart';
import 'package:best_baltanem/best_baltanem.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../viewmodel/onboard_viewmodel.dart';

class OnBoardFloatingButton extends StatelessWidget {
  final OnBoardViewModel modelValue;
  final String imgPath;
  const OnBoardFloatingButton(
      {Key? key, required this.imgPath, required this.modelValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return FloatingActionButton(
          backgroundColor: "c9a658".color,
          onPressed: () {},
          child: Padding(
            padding: context.padAllLow,
            child: SvgPicture.asset(
              imgPath,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
