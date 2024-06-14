// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomDraggableBottomSheet extends StatelessWidget {
  final Widget child;
  final double size;

  const CustomDraggableBottomSheet(
      {super.key, required this.child, required this.size});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.5,
      minChildSize: 0.3,
      maxChildSize: 0.93,
      expand: false,
      builder: (context, scrollController) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(size)),
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Stack(
              // mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                child,
                Center(
                  child: Container(
                    width: size * 2,
                    height: size * 0.3,
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(size),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
