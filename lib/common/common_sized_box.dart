import 'package:flutter/material.dart';

class CommonSizedBox extends StatelessWidget {
  double width, height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: this.height,
      width: this.width,
    );
  }

  CommonSizedBox(this.width, this.height);
}
