import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../../view_model/onboarding/data_onboarding.dart';

part 'on_boarding_view_state.dart';

class OnBoardingViewCubit extends Cubit<OnBoardingViewModel> {
  OnBoardingViewCubit(List<OnboardingPage> onboardingData)
      : super(OnBoardingViewModel(onboardingData: onboardingData, currentPage: 0));
  void updateCurrentPage(int page) {
    emit(state.copyWith(currentPage: page));
  }

  void goToNextPage() {
    if (state.currentPage < state.onboardingData.length - 1) {
      updateCurrentPage(state.currentPage + 1);
    }
  }
}
