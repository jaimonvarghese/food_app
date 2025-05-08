import 'package:flutter/material.dart';
import 'package:food_app/shared/widgets/bottom_sheet_container_widget.dart';
import 'package:food_app/shared/widgets/coupon_section.dart';
import 'package:food_app/shared/widgets/food_card.dart';
import 'package:food_app/shared/widgets/price_summary.dart';
import 'package:food_app/shared/widgets/quantity_section.dart';

class OrderSummarySheet extends StatelessWidget {
  const OrderSummarySheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          width: double.infinity,
          height: 550,
          color: Colors.white,

          child: Column(
            children: [
              FoodCard(),
              SizedBox(height: 20),
              CouponSection(),
              SizedBox(height: 15),
              QuantitySection(),
              SizedBox(height: 15),
              PriceSummary(),
            ],
          ),
        ),
        SizedBox(height: 10),
        BottomSheetContainerWidget(text: 'checkout', onPressed: () {}),
      ],
    );
  }
}



