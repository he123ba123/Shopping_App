
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class Authloading extends AuthState {}

final class AuthSuccessState extends AuthState {
  final UserData;
  AuthSuccessState({required this.UserData,});
}

final class ChooseImage extends AuthState {}
