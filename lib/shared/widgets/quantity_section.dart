import 'package:flutter/material.dart';

class QuantitySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(30),
            ),
            alignment: Alignment.center,
            child: Text('half', style: TextStyle(color: Colors.white)),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(30),
            ),
            alignment: Alignment.center,
            child: Text('Quantity: 01', style: TextStyle(color: Colors.black)),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(30),
            ),
            alignment: Alignment.center,
            child: Text('Kunal Deb', style: TextStyle(color: Colors.black)),
          ),
        ),
      ],
    );
  }
}
