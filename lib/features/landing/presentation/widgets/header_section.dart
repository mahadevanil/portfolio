import 'package:flutter/material.dart';

import 'available_for_work.dart';
import 'clock.widget.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: const EdgeInsets.symmetric(
        horizontal: 35,
      ),
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(
        width: 0.15,
        color: Colors.white,
      ))),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // available for work
          AvailableForWork(),
          //clock
          ClockWidget(),
        ],
      ),
    );
  }
}
