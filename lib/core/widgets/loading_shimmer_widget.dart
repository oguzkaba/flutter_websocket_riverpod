import 'package:flutter/material.dart';

class LoadingShimmerWidget extends StatelessWidget {
  final double? width, height;
  const LoadingShimmerWidget({super.key, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black12, width: width ?? 200, height: height ?? 40);
  }
}
