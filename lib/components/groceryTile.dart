import 'package:flutter/material.dart';

class GroceryTile extends StatefulWidget {
  final String name;
  final String price;
  final String Image;
  final color;
  Function()? onPressed;

  GroceryTile({
    super.key,
    required this.name,
    required this.price,
    required this.Image,
    this.color,
    required this.onPressed,
  });

  @override
  State<GroceryTile> createState() => _GroceryTileState();
}

class _GroceryTileState extends State<GroceryTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: widget.color[100], borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Image.asset(
                widget.Image,
                height: 80,
                width: 80,
              ),
            ),
            const SizedBox(height: 5),
            Text(widget.name),
            const SizedBox(height: 5),
            ElevatedButton(
                onPressed: widget.onPressed, child: Text(widget.price))
          ],
        ),
      ),
    );
  }
}
