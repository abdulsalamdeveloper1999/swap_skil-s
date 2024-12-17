import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:swap_skills/controllers/onboard_controller.dart';
import 'package:swap_skills/models/onboad_model.dart';

// Riverpod provider that exposes the OnboardingController.
final onboardingControllerProvider =
    StateNotifierProvider<OnboardingController, int>((ref) {
  return OnboardingController();
});
