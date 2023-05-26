import 'package:flutter/material.dart';
import 'package:flutter_app_template/src/common/theme/theme_helper.dart';
import 'package:flutter_app_template/src/features/auth/presentation/cubit/login_cubit/login_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final ThemeHelper t = ThemeHelper();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: BlocProvider(
        create: (context) => LoginCubit(),
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: t.bgColor,
            body: BlocConsumer(listener: (context, state) {
              if (state is LoginError) {
                // show snackbar
              }
              if (state is LoginSuccess) {
                // navigate to new page
              }
            }, builder: (context, state) {
              if (state is LoginLoading) {
                // build ui
              }
              return Container();
            })),
      ),
    );
  }
}
