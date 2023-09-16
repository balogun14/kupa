import 'package:flutter/material.dart';

class VerticalSpacing extends StatelessWidget {
  final height;
  const VerticalSpacing({super.key, this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}

class HorizontalSpacing extends StatelessWidget {
  final width;
  const HorizontalSpacing({super.key, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
