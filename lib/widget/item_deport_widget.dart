import 'package:flutter/material.dart';

class ItemDportWidget extends StatefulWidget {
  Map<String, dynamic> deporte;
  VoidCallback onTap;
  bool isFavoriteListContainer;
  ItemDportWidget(this.deporte, this.onTap, this.isFavoriteListContainer);

  @override
  State<ItemDportWidget> createState() => _ItemDportWidgetState();
}

class _ItemDportWidgetState extends State<ItemDportWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: widget.onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
              color: widget.isFavoriteListContainer
                  ? Colors.white
                  : widget.deporte["isfavorite"]
                      ? Colors.orange.shade200
                      : Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.orange, width: 2)),
          child: Text(
            widget.deporte["name"],
            style: TextStyle(fontSize: 18),
          ),
        ));
  }
}
