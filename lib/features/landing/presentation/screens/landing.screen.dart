import 'package:flutter/material.dart';
import 'package:portfolio/features/landing/presentation/views/landing_desktop.screen.dart';
import 'package:portfolio/features/landing/presentation/views/landing_mob.screen.dart';
import 'package:portfolio/features/landing/presentation/views/landing_tab.screen.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return const LandingDeskScreen();
        } else if (sizingInformation.deviceScreenType ==
            DeviceScreenType.tablet) {
          return const LandingTabScreen();
        } else {
          return const LandingMobScreen();
        }
      },
    );
  }
}
