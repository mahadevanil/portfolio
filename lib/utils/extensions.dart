import 'package:gap/gap.dart';

extension GapExtension on num {
  Gap get gap => Gap(toDouble());
}
