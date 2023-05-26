import 'package:flutter/material.dart';
import 'package:flutter_app_template/src/common/helpers/size.dart';
import 'package:flutter_app_template/src/common/theme/theme_helper.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeHelper t = ThemeHelper();
    SizeHelper s = SizeHelper(context);
    return Center(
      child: SizedBox(
        height: s.hHelper(1.5),
        width: s.hHelper(1.5),
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(t.white),
        ),
      ),
    );
  }
}
