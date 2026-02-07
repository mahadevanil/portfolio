import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:portfolio/style/text_styles.dart';

import '../../../../config/config.dart';

class ClockWidget extends StatelessWidget {
  const ClockWidget({super.key});

  // This method generates the current time as a formatted string.
  String _formatCurrentTime() {
    return DateFormat('HH:mm:ss').format(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        KStyles().reg(
          text: "Local Time ( IST )",
          size: 15,
        ),
        kDim.kGap15,
        Container(
          height: 40,
          width: 110,
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          decoration: BoxDecoration(
            color: const Color(0xff0f0f0f),
            border: Border.all(
              width: 0.1,
              color: Colors.white.withOpacity(0.2),
            ),
            borderRadius: kDim.kRadius10,
          ),
          child: StreamBuilder<String>(
            // Generate a new stream of time updates every second.
            stream: Stream.periodic(
              const Duration(seconds: 1),
              (_) => _formatCurrentTime(),
            ),
            // The initial value before the first update.
            initialData: _formatCurrentTime(),
            builder: (context, snapshot) {
              return Center(
                child: KStyles().reg(
                  text: snapshot.data ?? "",
                  size: 18,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
