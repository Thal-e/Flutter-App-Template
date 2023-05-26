import 'package:bloc/bloc.dart';
import 'package:flutter_app_template/src/features/auth/domain/login_repo.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  final LoginRepo _loginRepo = LoginRepo();
  void login(String email) async {
    emit(LoginLoading());
    var res = await _loginRepo.login(email);
    res.fold((l) => emit(LoginError(l.message)), (r) => emit(LoginSuccess()));
  }
}
