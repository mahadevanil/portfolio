import 'package:flutter/material.dart';

import 'header_section.dart';

class ContentSection extends StatelessWidget {
  const ContentSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //header section
          HeaderSection(),
        ],
      ),
    );
  }
}
