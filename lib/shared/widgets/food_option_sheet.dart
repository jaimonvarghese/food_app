import 'package:flutter/material.dart';
import 'package:food_app/shared/widgets/address_sheet.dart';
import 'package:food_app/shared/widgets/bottom_sheet_container_widget.dart';

class FoodOptionSheet extends StatefulWidget {
  const FoodOptionSheet({super.key});

  @override
  State<FoodOptionSheet> createState() => _FoodOptionSheetState();
}

class _FoodOptionSheetState extends State<FoodOptionSheet> {
  bool isHalf = true;
  int quantity = 1;
  void _showAddressBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,

      builder: (context) {
        return const AddressSheet();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(15),
          width: double.infinity,
          height: 80,
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _buildToggleOption('half', isHalf),
                  const SizedBox(width: 10),
                  _buildToggleOption('full', !isHalf),
                ],
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(15),

          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          height: 80,
          child: Row(
            children: [
              Text(
                "Add To Cart Category",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              Spacer(),

              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_box_rounded, color: Colors.grey, size: 32),
              ),
            ],
          ),
        ),
        
        const SizedBox(height: 10),
        BottomSheetContainerWidget(
          text: 'proceed',
          onPressed: () {
            Navigator.pop(context);
            _showAddressBottomSheet(context);
          },
        ),
      ],
    );
  }

  Widget _buildToggleOption(String label, bool selected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: SizedBox(
        width: 100,
        child: GestureDetector(
          onTap: () => setState(() => isHalf = label == 'half'),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: selected ? Colors.black : Colors.grey.shade200,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                label,
                style: TextStyle(
                  color: selected ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
