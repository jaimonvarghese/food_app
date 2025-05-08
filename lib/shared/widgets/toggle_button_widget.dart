import 'package:flutter/material.dart';

class ToggleButtonWidget extends StatefulWidget {
  const ToggleButtonWidget({super.key});
  @override
  _ToggleButtonWidgetState createState() => _ToggleButtonWidgetState();
}

class _ToggleButtonWidgetState extends State<ToggleButtonWidget> {
  bool isToggled = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 40,

      decoration: BoxDecoration(
        border: Border.all(color: Colors.green, width: 2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: FittedBox(
        fit: BoxFit.fill,
        child: Switch(
          value: isToggled,
          onChanged: (value) {
            setState(() {
              isToggled = value;
            });
          },
          activeColor: Colors.green,
          activeTrackColor: Colors.white,
          inactiveThumbColor: Colors.grey,
          inactiveTrackColor: Colors.white,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
      ),
    );
  }
}
