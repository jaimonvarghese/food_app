import 'package:flutter/material.dart';

class QuantityWidget extends StatefulWidget {
  const QuantityWidget({super.key});

  @override
  State<QuantityWidget> createState() => _QuantityWidgetState();
}

class _QuantityWidgetState extends State<QuantityWidget> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Quantity", style: TextStyle(fontWeight: FontWeight.bold)),
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.remove, size: 14),
              onPressed: () {
                if (quantity > 1) setState(() => quantity--);
              },
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 3),
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Text(
                quantity.toString(),
                style: const TextStyle(fontSize: 12),
              ),
            ),

            IconButton(
              icon: const Icon(Icons.add, size: 14),
              onPressed: () {
                setState(() => quantity++);
              },
            ),
          ],
        ),
      ],
    );
  }
}
