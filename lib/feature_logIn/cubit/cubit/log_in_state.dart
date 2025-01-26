sealed class LogInState {}

final class LogInInitialState extends LogInState {}

final class LogInSuccessState extends LogInState {
  final successData;
  LogInSuccessState({required this.successData});
}

final class LogInLoadingState extends LogInState {}
