import 'package:flutter/material.dart';

import '../widgets/content_section.dart';
import '../widgets/profile_section.dart';
import '../widgets/social_media_section.dart';

class LandingDeskScreen extends StatelessWidget {
  const LandingDeskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ProfileSection(),
          ),
          Expanded(
            flex: 6,
            child: ContentSection(),
          ),
          Expanded(
            child: SocialMediaSection(),
          ),
        ],
      ),
    );
  }
}
