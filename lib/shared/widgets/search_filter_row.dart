import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchFilterRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 15),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 2,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 13, vertical: 13),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey, 
                width: 1.0, 
              ),
              borderRadius: BorderRadius.circular(
                30,
              ),
            ),
            child: Row(
              children: [
                Text(
                  'Filter',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(width: 5,),
                Icon(Icons.filter_alt_outlined, size: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}