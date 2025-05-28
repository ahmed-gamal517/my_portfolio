import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, this.child, this.height});
  final Widget? child;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Theme.of(context).primaryColor, width: 2),
      ),
      child: child,
    );
  }
}
