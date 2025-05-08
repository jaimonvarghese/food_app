import 'package:flutter/material.dart';

class PriceSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          priceRow('Sub Total', '₹450.00'),
          priceRow('Delivery Charge', '₹20.00'),
          priceRow('Discount', '₹150.00'),
          priceRow('Platform fee', '₹9.00'),
          Divider(),
          SizedBox(height: 5,),
          priceRow('Total', '₹329.00', isBold: true),
        ],
      ),
    );
  }

  Widget priceRow(String title, String amount, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          Text(
            amount,
            style: TextStyle(
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}