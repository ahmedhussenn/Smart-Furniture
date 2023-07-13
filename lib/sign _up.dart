// import 'package:ar_furniture_app/screens/home/home_screen.dart';
// import 'package:flutter/material.dart';
//
//
// import 'package:flutter/gestures.dart';
//
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:fluttertoast/fluttertoast.dart';
//
// import 'data/data.dart';
//
//
//
// class Login extends StatefulWidget {
//   const Login({Key? key}) : super(key: key);
//
//   @override
//   _LoginState createState() => _LoginState();
// }
//
// class _LoginState extends State<Login> {
//
//   bool _passwordVisible = false;
//   bool? isChecked=false;
//   final _passwordcontroller = TextEditingController();
//   final _emailcontroller = TextEditingController();
//   final _formkey = GlobalKey<FormState>();
//   bool isEmailorPasswordWrong=false ;
//
//   @override
//   void dispose()
//   {
//     //clean textfields when widget is disposed
//
//     _emailcontroller.dispose();
//     _passwordcontroller.dispose();
//
//     super.dispose();
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     _passwordVisible = false;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         resizeToAvoidBottomInset: false,
// bottomNavigationBar: bottomnavbar(),
//
//         body: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10.0),
//             child: Form(
//               key: _formkey,
//               child: ListView(
//                 children: <Widget>[
//
//
//                   SizedBox(height: MediaQuery.of(context).size.height * 0.09),
//
//                   //Welcome Back
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         'Welcome Back!',
//                         // style: GoogleFonts.raleway(
//                         //     color: Color.fromRGBO(39, 39, 40, 1),
//                         //     fontSize: 36,
//                         //     fontWeight: FontWeight.w700),
//                         //style: Theme.of(context).textTheme.headlineLarge,
//                       )
//                     ],
//                   ),
//
//
//
//
//                   SizedBox(height: MediaQuery.of(context).size.height * 0.1),
//
//
//                   //Enter Email
//                   Center(
//                     child: TextFormField(
//                       controller: _emailcontroller,
//                       autofocus: false,
//                       maxLines: 1,
//                       minLines: 1,
//
//                       decoration: InputDecoration(
//                           contentPadding: EdgeInsets.symmetric(vertical: 17,horizontal: 13),
//
//                           suffixIcon: const Icon(
//                             Icons.email_outlined,
//                             color: Color.fromRGBO(143, 147, 154, 1),
//                           ),
//
//                           hintText: 'Email',
//                       //     hintStyle: GoogleFonts.raleway(
//                       //   color: const Color.fromRGBO(143, 147, 154, 1),
//                       //   //fontSize: 16,
//                       //   fontWeight: FontWeight.w400,
//                       //
//                       // ),
//
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(width: 1, color: Color.fromRGBO(39, 39, 40, 1)),
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: const BorderSide(width: 1, color: Color.fromRGBO(180, 25, 25, 1)),
//                             borderRadius: BorderRadius.circular(12),
//                           )
//                       ),
//                       validator: (value)
//                       {
//                         if(value==null||value.isEmpty)
//                         {
//                           return"Please entre your email";
//                         }
//
//                         else if(!value.contains("@")||!value.contains("."))
//                         {
//                           return"Please entre a valid email address";
//                         }
//                         // else {
//                         //   isEmailorPasswordWrong=false;
//                         //   setState(() {
//                         //
//                         //   });
//                         //
//                         // }
//
//
//                         return null;
//                       },
//                     ),
//                   ),
//
//
//
//                   SizedBox(height: MediaQuery.of(context).size.height * 0.02),
//
//
//                   //Entre Password
//                   Center(
//                     child: TextFormField(
//                       controller: _passwordcontroller,
//                       autofocus: false,
//                       maxLines: 1,
//                       minLines: 1,
//                       obscureText: _passwordVisible?false:true,
//
//                       decoration: InputDecoration(
//                           contentPadding: EdgeInsets.symmetric(vertical: 17,horizontal: 13),
//
//                           suffixIcon: IconButton(
//                             icon: Icon(
//                               color: const Color.fromRGBO(143, 147, 154, 1),
//                               // Based on passwordVisible state choose the icon
//                               _passwordVisible
//                                   ? Icons.visibility
//                                   : Icons.visibility_off,
//                             ),
//                             onPressed: () {
//                               // Update the state i.e. toogle the state of passwordVisible variable
//                               setState(() {
//                                 _passwordVisible = !_passwordVisible;
//                               });
//                             },
//                           ),
//
//                           // ),
//                           hintText: 'Password',
//                           // hintStyle:  GoogleFonts.raleway(
//                           //   color: const Color.fromRGBO(143, 147, 154, 1),
//                           //   //fontSize: 16,
//                           //   fontWeight: FontWeight.w400,
//                           //
//                           // ) ,//TextStyle(color: Color.fromRGBO(143, 147, 154, 1)),
//                           // Set border for enabled state (default)
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: const BorderSide(width: 1, color: Color.fromRGBO(39, 39, 40, 1)),
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           // Set border for focused state
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: const BorderSide(width: 1, color: Color.fromRGBO(180, 25, 25, 1)),
//                             borderRadius: BorderRadius.circular(12),
//                           )),
//                       validator: (value)
//                       {
//                         if(value==null||value.isEmpty)
//                         {
//                           return"Please entre your password";
//                         }
//                         // else if (value!=null){
//                         //   return"Please entre your password";
//                         // }
//                         // else {
//                         //   isEmailorPasswordWrong=false;
//                         //   setState(() {
//                         //
//                         //   });
//                         // }
//
//
//                         return null;
//                       },
//                     ),
//                   ),
//
//
//
//                   SizedBox(height: MediaQuery.of(context).size.height * 0.02),
//
//
//                   //Check Box
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Checkbox(value: isChecked,
//                           activeColor: const Color.fromRGBO(180, 25, 25, 0.5),
//                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
//                           // tristate: true,
//                           onChanged: (newBool){
//                             setState(() {
//                               isChecked=newBool;
//                             });
//                           }),
//
//                       //Reember Me
//                       Text("Remember Me",
//                         // style: GoogleFonts.raleway(
//                         //     color: const Color.fromRGBO(133, 137, 143, 1),
//                         //     fontSize: 14,
//                         //     fontWeight: FontWeight.w400,
//                         //     fontStyle: FontStyle.normal
//                         // )
//                         //style: TextStyle(color: Color.fromRGBO(133, 137, 143, 1))
//                         ),
//
//
//                       //Forgot Password
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.end,
//
//                         children: [
//                           RichText(
//                             text: TextSpan(
//                                 text: '                                  ',
//                                 children: [
//                                   TextSpan(
//                                       text: 'Forgot Password?',
//                                       // style: GoogleFonts.raleway(
//                                       //     color: const Color.fromRGBO(180, 25, 25, 1),
//                                       //     fontSize: 14,
//                                       //     fontWeight: FontWeight.w400,
//                                       //     decoration: TextDecoration.underline,
//                                       //     fontStyle: FontStyle.normal
//                                       // ),
//
//                                       // recognizer: TapGestureRecognizer()
//                                       //   ..onTap = () => Navigator.push(
//                                       //     context,
//                                       //     MaterialPageRoute(builder: (context) => ForgotPassword()),
//                                       //   )
//                                   ),
//                                 ]
//                             ),
//
//                           ),
//                         ],
//                       ),
//
//
//
//                     ],
//                   ),
//
//
//
//
//                   SizedBox(height: MediaQuery.of(context).size.height * 0.05),
//
//                   // Align(
//                   //   alignment: Alignment.centerLeft,
//                   //   child: Visibility(
//                   //     visible: isEmailorPasswordWrong,
//                   //     child: Text('Either Email or Password are wrong' ,style: TextStyle(color: Colors.red),),
//                   //
//                   //   ),
//                   // ),
//                   // SizedBox(height: MediaQuery.of(context).size.height * 0.05),
//                   //SignIn Button
//                   Container(
//                     height: 52,
//                     width: 382,
//                     child: ElevatedButton(
//                       child: Text('Sign In' ,textAlign: TextAlign.center,
//                         // style: GoogleFonts.raleway(
//                         //   color: Color.fromRGBO(244, 244, 244, 1),
//                         //   fontSize: 20,
//                         //   fontWeight: FontWeight.w700,
//                         // )
//                         ),
//
//                       onPressed: () async {
//
//                         try{
//                           if(_formkey.currentState!.validate()) {
//                             final User = await FirebaseAuth.instance.signInWithEmailAndPassword(
//                                 email: _emailcontroller.text,
//                                 password: _passwordcontroller.text);
//                             if (User != null) {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(builder:
//                                       (context) => HomeScreen()));
//                               Fluttertoast.showToast(msg: "login successfully");
//                             }
//                           }
//                         }
//                         catch(e)
//                         {
//                           print(e.toString());
//                         }
//
//
//                       },
//
//                       style: ElevatedButton.styleFrom(
//                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//                         // backgroundColor: const Color.fromRGBO(180, 25, 25, 1), // Background color
//                       ),
//                     ),
//                   ),
//
//
//
//
//
//                   SizedBox(height: MediaQuery.of(context).size.height * 0.025),
//
//                   //Don't Have Account?
//                   Center(
//                     child: RichText(
//                       text: TextSpan(
//                           text: "Don't have an account?",
//                           // style: GoogleFonts.raleway(
//                           //   color: Color.fromRGBO(133, 137, 143, 1),
//                           //   fontSize: 14,
//                           //   fontWeight: FontWeight.w400,),
//
//                           children: [
//                             TextSpan(
//                                 text: '  Sign Up',
//                                 // style: GoogleFonts.raleway(
//                                 //   color: Color.fromRGBO(180, 25, 25, 1),
//                                 //   fontSize: 14,
//                                 //   fontWeight: FontWeight.w600,),
//
//                                 // recognizer: TapGestureRecognizer()
//                                 //   ..onTap = () => Navigator.push(
//                                 //     context,
//                                 //     MaterialPageRoute(builder: (context) => SignUp()),
//                                 //   )
//                             ),
//                           ]
//                       ),
//
//                     ),
//                   ),
//
//
//
//
//                 ],
//               ),
//             )));
//   }
// }