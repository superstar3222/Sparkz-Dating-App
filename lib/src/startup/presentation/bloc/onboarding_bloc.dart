import 'package:bloc/bloc.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnBoardingEvent, OnBoardingState> {
  OnboardingBloc() : super(OnBoardingState()) {
    on<OnBoardingEvent>((event, emit) {
      emit(OnBoardingState(page: state.page));
    });
  }
}
