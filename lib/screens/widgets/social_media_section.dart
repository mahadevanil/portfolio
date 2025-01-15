import 'package:flutter/material.dart';

class SocialMediaSection extends StatelessWidget {
  const SocialMediaSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
              left: BorderSide(
        width: 0.15,
        color: Colors.white,
      ))),
    );
  }
}
