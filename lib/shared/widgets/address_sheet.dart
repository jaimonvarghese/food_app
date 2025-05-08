
import 'package:flutter/material.dart';
import 'package:food_app/shared/widgets/add_address_bottom_sheet.dart';
import 'package:food_app/shared/widgets/addres_container.dart';
import 'package:food_app/shared/widgets/bottom_sheet_container_widget.dart';

class AddressSheet extends StatelessWidget {
  const AddressSheet({super.key});

  void _addAddressBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) {
        return AddAddressBottomSheet();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(child: AddresContainer()),
        const SizedBox(height: 10),
        BottomSheetContainerWidget(
          text: 'next',
          onPressed: () {
            Navigator.pop(context);
            _addAddressBottomSheet(context);
          },
        ),
      ],
    );
  }
}
