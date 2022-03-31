import 'package:best_baltanem/best_baltanem.dart';
import 'package:flutter/material.dart';
import '../components/onboard_image.dart';
import '../components/onboard_floating_button.dart';
import '../components/onboard_page_indicator.dart';
import '../../viewmodel/onboard_viewmodel.dart';
import '../components/onboard_text.dart';

class OnBoardBodyView extends StatefulWidget {
  final OnBoardViewModel modelValue;

  const OnBoardBodyView({
    Key? key,
    required this.modelValue,
  }) : super(key: key);

  @override
  State<OnBoardBodyView> createState() => _OnBoardBodyViewState();
}

class _OnBoardBodyViewState extends State<OnBoardBodyView> {
  //
  static const int _flexOneValue = 7;
  static const int _flexTwoValue = 2;
  //
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padHorizontalNormaly,
      child: Column(
        children: [
          const Spacer(flex: 1),
          Expanded(
            flex: _flexOneValue,
            child: buildPageView(widget.modelValue),
          ),
          const SpaceSizedHeightBox(height: 0.05),
          Expanded(
            flex: _flexTwoValue,
            child: skipAndIndicator(context, widget.modelValue),
          ),
        ],
      ),
    );
  }

  Widget buildPageView(OnBoardViewModel modelValue) {
    return PageView.builder(
      itemCount: modelValue.onBoardItems.length,
      onPageChanged: (value) {
        modelValue.changeCurrentPage(value);
      },
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OnBoardBodyImage(model: modelValue.onBoardItems[index]),
            const Spacer(),
            OnBoardBodyText(model: modelValue.onBoardItems[index]),
          ],
        );
      },
    );
  }

  Widget skipAndIndicator(BuildContext context, OnBoardViewModel modelValue) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        OnBoardPageIndicator(modelValue: modelValue),
        OnBoardFloatingButton(
          imgPath: "assets/images/button/right_arrow_2.svg",
          modelValue: modelValue,
        ),
      ],
    );
  }
}
