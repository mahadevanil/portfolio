import 'package:flutter/material.dart';

import '../../config/config.dart';
import '../../style/text_styles.dart';

class AvailableForWork extends StatelessWidget {
  const AvailableForWork({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return _body();
  }

  Container _body() {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        color: const Color(0xff141415),
        border: Border.all(
          width: 0.1,
          color: Colors.white.withOpacity(0.2),
        ),
        borderRadius: kDim.kRadius30,
      ),
      width: 180,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 10,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // glowing circle
              _glowingCircle(),
              // label
              _label(),
            ],
          ),
        ),
      ),
    );
  }

  /// label
  Text _label() {
    return KStyles().med(
      text: "Available For Work",
      size: 14,
      color: Colors.white70,
    );
  }

  /// glowing Circle
  Container _glowingCircle() {
    return Container(
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        color: const Color(0xff6dd33d),
        borderRadius: kDim.kRadius100,
      ),
    );
  }
}
