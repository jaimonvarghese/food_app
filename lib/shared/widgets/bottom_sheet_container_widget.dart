import 'package:flutter/material.dart';
import 'package:food_app/shared/widgets/main_button_widget.dart';
import 'package:food_app/shared/widgets/quantity_widget.dart';

class BottomSheetContainerWidget extends StatelessWidget {
  const BottomSheetContainerWidget({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      height: 100,
      child: Row(
        children: [
          QuantityWidget(),
          Spacer(),
          MainButtonWidget(text: text, onPressed: onPressed),
        ],
      ),
    );
  }
}
