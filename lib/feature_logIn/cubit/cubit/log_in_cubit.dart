import 'package:app3/feature_logIn/cubit/cubit/log_in_state.dart';
import 'package:app3/feature_logIn/models/data/login_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogInCubit extends Cubit<LogInState> {
  LogInCubit() : super(LogInInitialState());
  static LogInCubit get(context) => BlocProvider.of(context);
  final LoginDataTest loginDataTest = LoginDataTest();

  loginTestCubit({required email, required password}) async {
    emit(LogInLoadingState());

    var success = await loginDataTest.login(email: email, password: password);
    emit(LogInSuccessState(successData: success));
  }
}
