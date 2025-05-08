import 'package:flutter/material.dart';
import 'package:food_app/shared/widgets/address_form.dart';
import 'package:food_app/shared/widgets/bottom_sheet_container_widget.dart';
import 'package:food_app/shared/widgets/check_out_bottom_sheet.dart';

class AddAddressBottomSheet extends StatelessWidget {
  const AddAddressBottomSheet({super.key});
  void _checkOutBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) {
        return CheckOutBottomSheet();
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

          child: AddressForm(),
        ),
        const SizedBox(height: 10),
        BottomSheetContainerWidget(text: 'create', onPressed: () {
          Navigator.pop(context);
          _checkOutBottomSheet(context);
        }),
      ],
    );
  }
}


