import 'package:flutter/material.dart';
import 'package:food_app/shared/widgets/bottom_sheet_container_widget.dart';
import 'package:food_app/shared/widgets/coupon_section.dart';
import 'package:food_app/shared/widgets/food_card.dart';
import 'package:food_app/shared/widgets/order_summary_sheet.dart';

class CheckOutBottomSheet extends StatelessWidget {
  const CheckOutBottomSheet({super.key});
  void _orderSummarySheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) {
        return OrderSummarySheet();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          width: double.infinity,
          height: 450,
          color: Colors.white,

          child: Column(
            children: [FoodCard(), SizedBox(height: 20), CouponSection()],
          ),
        ),
        SizedBox(height: 10,),
        BottomSheetContainerWidget(text: 'checkout', onPressed: () {
          Navigator.pop(context);
          _orderSummarySheet(context);
        }),
      ],
    );
  }
}



