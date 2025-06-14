import 'package:flutter/material.dart';

void showImageDialog(BuildContext context, String imagePath) {
  showDialog(
    context: context,
    builder:
        (_) => Dialog(
          backgroundColor: Colors.transparent,
          child: InteractiveViewer(
            // Optional: allows zooming/panning
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                imagePath,
                fit: BoxFit.contain,
                filterQuality: FilterQuality.high,
              ),
            ),
          ),
        ),
  );
}
