import 'package:flutter/material.dart';

class AddressForm extends StatefulWidget {
  @override
  _AddressFormState createState() => _AddressFormState();
}

class _AddressFormState extends State<AddressForm> {
  String selectedType = 'Home';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Row(
          children: [
            Expanded(child: buildTextField(label: 'Name', hint: 'Anuj Deb')),
            SizedBox(width: 15),
            Expanded(child: buildTextField(label: 'Phone Number', hint: '+91')),
          ],
        ),
        SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: buildTextField(
                label: 'Flat/ Housing No./ Building/ Apartment',
                hint: 'XXXXXXXXXXXXXXXXXXXXXXXX',
              ),
            ),
            SizedBox(width: 15),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Color(0xFFF2B624), width: 2),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.location_on),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        buildTextField(label: 'Area/ Street/ Sector', hint: 'XXXXXXXXXXXXXXXX'),
        SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(child: buildTextField(label: 'Pincode', hint: '123456')),
            SizedBox(width: 50),
            Expanded(
              child: Row(
                children: [
                  buildTypeButton('Home'),
                  SizedBox(width: 10),
                  buildTypeButton('Office'),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildTextField({
    required String label,
    String? hint,
    IconData? suffixIcon,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 5),
        TextField(
          decoration: InputDecoration(
            hintText: hint ?? '',
            suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
          ),
        ),
      ],
    );
  }

  Widget buildTypeButton(String type) {
    bool isSelected = selectedType == type;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedType = type;
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
            color: isSelected ? Color(0xFFF2B624) : Colors.white,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.grey),
          ),
          alignment: Alignment.center,
          child: Text(
            type,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
