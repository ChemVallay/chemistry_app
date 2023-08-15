import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../view_model/onboarding/data_onboarding.dart';
import 'cubit/on_boarding_view_cubit.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingViewCubit, OnBoardingViewModel>(
      builder: (context, state) {
        final List<OnboardingPage> onboardingData = [
          const OnboardingPage(
            title: OnBoardingViewModel.title1,
            description: OnBoardingViewModel.description1,
          ),
          const OnboardingPage(
            title: OnBoardingViewModel.title2,
            description: OnBoardingViewModel.description2,
          ),
          const OnboardingPage(
            title: OnBoardingViewModel.title3,
            description: OnBoardingViewModel.description3,
          ),
          const OnboardingPage(
            title: OnBoardingViewModel.title4,
            description: OnBoardingViewModel.description4,
          ),
          const OnboardingPage(
            title: OnBoardingViewModel.title5,
            description: OnBoardingViewModel.description5,
          ),
        ];

        return Scaffold(
          body: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  itemCount: onboardingData.length,
                  onPageChanged: (page) {
                    context.read<OnBoardingViewCubit>().updateCurrentPage(page);
                  },
                  itemBuilder: (context, index) {
                    return OnboardingPage(
                      title: onboardingData[index].title,
                      description: onboardingData[index].description,
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _buildPageIndicator(
                  onboardingData.length,
                  state.currentPage,
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  context.read<OnBoardingViewCubit>().goToNextPage();
                },
                child: Text(
                  state.currentPage < onboardingData.length - 1
                      ? 'Next'
                      : 'Get Started',
                ),
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        );
      },
    );
  }

  List<Widget> _buildPageIndicator(int pageCount, int currentPage) {
    List<Widget> indicators = [];
    for (int i = 0; i < pageCount; i++) {
      indicators.add(
        _buildIndicator(i == currentPage),
      );
    }
    return indicators;
  }

  Widget _buildIndicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.grey,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
