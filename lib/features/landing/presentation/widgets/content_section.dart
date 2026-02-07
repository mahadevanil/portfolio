import 'package:flutter/material.dart';
import 'package:portfolio/features/landing/presentation/widgets/experience.dart';
import 'package:portfolio/features/landing/presentation/widgets/service.dart';
import 'package:portfolio/utils/extensions.dart';

import 'header_section.dart';

class ContentSection extends StatelessWidget {
  const ContentSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //header section
          const HeaderSection(),
          const SizedBox(
            // color: Colors.red,
            height: 450,
            child: Row(
              children: [
                //image,
                //greetingd and details
              ],
            ),
          ),
          const ExperienceSection(),
          50.gap,
          const ServiceSection()
        ],
      ),
    );
  }
}
