import 'package:flutter/material.dart';
import 'package:flutter_app_template/src/features/auth/presentation/cubit/login_cubit/login_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'common/theme/theme_helper.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final ThemeHelper t = ThemeHelper();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginCubit(),
        ),
      ],
      child: MaterialApp.router(
        theme: ThemeData(
          scaffoldBackgroundColor: t.bgColor,
          //   textTheme: GoogleFonts.spaceGroteskTextTheme()
        ),
        debugShowCheckedModeBanner: false,

        // routerDelegate: router.delegate(
        //   initialRoutes: [],
        // ),
      ),
    );
  }
}
