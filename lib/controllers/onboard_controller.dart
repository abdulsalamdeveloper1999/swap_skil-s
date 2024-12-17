// lib/controllers/onboarding_controller.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';

// The StateNotifier that manages the onboarding page index.
class OnboardingController extends StateNotifier<int> {
  OnboardingController() : super(0); // Initial page index is 0.

  // Method to update the current page index.
  void setPageIndex(int index) {
    state = index;
  }

  // Method to go to the next page.
  void nextPage() {
    if (state < 2) {
      state = state + 1;
    }
  }

  // Method to go to the previous page.
  void previousPage() {
    if (state > 0) {
      state = state - 1;
    }
  }
}
