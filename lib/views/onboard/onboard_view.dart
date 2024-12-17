import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:swap_skills/core/widgets/my_button.dart';

import 'package:swap_skills/core/widgets/my_text.dart';
import 'package:swap_skills/proivders/onboard_provider.dart';

class OnboardView extends ConsumerWidget {
  const OnboardView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPageIndex = ref.watch(onboardingControllerProvider);
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: PageController(initialPage: currentPageIndex),
        onPageChanged: (index) {
          ref.read(onboardingControllerProvider.notifier).setPageIndex(index);
        },
        children: [
          _onbaordOne(ref),
          _onbaordTwo(),
        ],
      ),
    );
  }
}

Container _onbaordOne(WidgetRef ref) {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyText(text: 'SkillSwap', fontSize: 22),
        MyText(text: 'Swap Skills, Learn Together', fontSize: 22),
        MyButton(
          text: 'text',
          onTap: () {
            ref.read(onboardingControllerProvider.notifier).nextPage();
          },
        )
      ],
    ),
  );
}

Container _onbaordTwo() {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyText(text: 'SkillSwap', fontSize: 22),
        MyText(text: 'Swap Skills, Learn Together', fontSize: 22),
        MyButton(
          text: 'text',
          onTap: () {},
        )
      ],
    ),
  );
}
