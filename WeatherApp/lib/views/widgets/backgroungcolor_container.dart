import 'package:flutter/material.dart';

class BackgroundcolorContainer extends StatelessWidget {
  const BackgroundcolorContainer({
    super.key, required this.align1, required this.align2, required this.width, required this.shape, required this.color,
  });
  final double align1;
  final double align2;
  final double width;
  final BoxShape shape;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(align1, align2),
      child: Container(
        height: 300,
        width: width,
        decoration: BoxDecoration(
          shape: shape,
          color: color,
        ),
      ),
    );
  }
}
