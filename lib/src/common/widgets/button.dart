// import 'package:devsoc22_app/src/common/helpers/size.dart';
// import 'package:devsoc22_app/src/common/theme/colors.dart';
// import 'package:devsoc22_app/src/common/theme/theme_helper.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class PrimaryButton extends StatelessWidget {
//   const PrimaryButton(
//       {Key? key,
//       required this.onButtonPressed,
//       required this.msg,
//       this.width,
//       this.color})
//       : super(key: key);

//   final VoidCallback onButtonPressed;
//   final String msg;
//   final double? width;
//   final Color? color;
//   @override
//   Widget build(BuildContext context) {
//     SizeHelper s = SizeHelper(context);
//     HoopsTheme theme = HoopsTheme();
//     return TextButton(
//       onPressed: onButtonPressed,
//       child: Container(
//         padding: EdgeInsets.all(
//           s.wHelper(3),
//         ),
//         width: width ?? s.wHelper(100),
//         child: Center(
//           child: theme.buttonText(msg),
//         ),
//         decoration: BoxDecoration(
//           color: color ?? primaryBlack,
//           borderRadius: BorderRadius.circular(100),
//         ),
//       ),
//     );
//   }
// }

// class CardButton extends StatelessWidget {
//   const CardButton(
//       {Key? key,
//       this.onButtonPressed,
//       required this.msg,
//       this.width,
//       this.textColor,
//       this.color})
//       : super(key: key);

//   final VoidCallback? onButtonPressed;
//   final String msg;
//   final double? width;
//   final Color? color, textColor;
//   @override
//   Widget build(BuildContext context) {
//     SizeHelper s = SizeHelper(context);

//     return TextButton(
//       onPressed: onButtonPressed,
//       child: Container(
//         padding: EdgeInsets.all(
//           s.wHelper(2),
//         ),
//         width: width ?? s.wHelper(100),
//         child: Center(
//           child: Text(
//             msg,
//             style: GoogleFonts.montserrat(
//               color: textColor ?? Colors.white,
//               fontSize: 16,
//               fontWeight: FontWeight.w700,
//             ),
//           ),
//         ),
//         decoration: BoxDecoration(
//           color: color ?? primaryBlack,
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     );
//   }
// }

// class PrimaryTextButton extends StatelessWidget {
//   const PrimaryTextButton(
//       {Key? key, required this.onButtonPressed, required this.msg})
//       : super(key: key);

//   final VoidCallback onButtonPressed;
//   final String msg;

//   @override
//   Widget build(BuildContext context) {
//     HoopsTheme theme = HoopsTheme();
//     return TextButton(
//       onPressed: onButtonPressed,
//       child: theme.subtitleBold(msg),
//     );
//   }
// }
