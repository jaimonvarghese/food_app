import 'package:flutter/material.dart';
import 'package:food_app/shared/widgets/addres_box_widget.dart';

class AddresContainer extends StatelessWidget {
  const AddresContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      width: double.infinity,
      height: 400,
      color: Colors.white,
    
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Create new address  ',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
              ),
              Spacer(),
              TextButton.icon(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.grey, width: 1),
                  ),
                ),
                label: Text(
                  "New",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                icon: Icon(Icons.add, size: 18),
              ),
            ],
          ),
          SizedBox(height: 20),
          AddresBoxWidget(),
        ],
      ),
    );
  }
}