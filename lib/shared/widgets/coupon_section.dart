import 'package:flutter/material.dart';

class CouponSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Icon(Icons.card_giftcard, color: Colors.amber),
          SizedBox(width: 10),
          Text('Coupons', style: TextStyle(fontWeight: FontWeight.bold)),
          Spacer(),
          Icon(Icons.copy, color: Colors.grey),
        ],
      ),
    );
  }
}
