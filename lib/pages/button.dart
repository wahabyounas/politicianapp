import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qamar_zaman_kaira/pages/forgotpassword.dart';
import 'package:qamar_zaman_kaira/pages/signup.dart';
import 'package:qamar_zaman_kaira/theme.dart';

class LoginButton extends StatelessWidget {
  final GestureTapCallback onPressed;
  const LoginButton({required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Color(0xFFe9533c),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
                height: 1.4 * (MediaQuery.of(context).size.height / 20),
              width: 5 * (MediaQuery.of(context).size.width / 0),
              margin: EdgeInsets.only(bottom: 20),
              child: Text(
            'Login',
            style: GoogleFonts.poppins(
              textStyle: GoogleFonts.poppins(),
              fontSize: 18,
              fontWeight: FontWeight.w700,
              letterSpacing: 1,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ))
        ],
      ),
      onPressed: onPressed,
      // shape: const StadiumBorder(),
    );
  }
}


// class LoginButton extends StatelessWidget {
//    final GestureTapCallback onPressed;
//   LoginButton({ required this.onPressed});
  
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     child:
//       Container(
//         height: 1.4 * (MediaQuery.of(context).size.height / 20),
//         width: 5 * (MediaQuery.of(context).size.width / 10),
//         margin: EdgeInsets.only(bottom: 20),
//         child: RaisedButton(
//           elevation: 5,
//           color: Color(0xFFe9533c),
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//           onPressed: (){
//             onPressed;
//           },
//           child:  Text(
//                       'Login',
//                       // style: GoogleFonts.poppins(
//                       //   textStyle: style,
//                       //   fontSize: 18,
//                       //   fontWeight: FontWeight.w700,
//                       //   letterSpacing: 1,
//                       //   color: Color.fromARGB(255, 255, 255, 255),
//                       // ),
//                       )
//         ),
//       ),
//     );




// //     // return Container(
// //     //     child: TextButton(
// //     //         child: Container(
// //     //           alignment: Alignment.center,
// //     //           height: MediaQuery.of(context).size.height * 0.08,
// //     //           width: double.infinity,
// //     //           decoration: BoxDecoration(
// //     //               borderRadius: BorderRadius.circular(16),
// //     //               color: kPrimaryColor),
// //     //           child: Text(buttonText,
// //     //               style: textButton.copyWith(color: kWhiteColor)),
// //     //         ),
// //     //         onPressed: () {
// //     //           print(username.text);
// //     //           print(password.text);
//     //           loginRequestModel.username = username.text;
//     //           loginRequestModel.password = password.text;
//     //         }));
// //   }
// // }
