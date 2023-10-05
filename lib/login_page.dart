// // ignore_for_file: prefer_const_constructors, use_build_context_synchronously

// import 'dart:convert';

// import 'package:flutter/material.dart';
// //import 'package:http/http.dart' as http;

// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final formKey = GlobalKey<FormState>();
//   String email = '';
//   String password = '';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Padding(
//       padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
//       child: Form(
//           key: formKey,
//           child: Column(
//             children: [
//               TextFormField(
//                 onChanged: (value) {
//                   email = value;
//                 },
//                 decoration: InputDecoration(labelText: 'Email'),
//               ),
//               TextFormField(
//                 onChanged: (value) {
//                   password = value;
//                 },
//                 decoration: InputDecoration(labelText: 'Password'),
//               ),
//               GestureDetector(
//                 onTap: () async {
//                   if (formKey.currentState!.validate()) {
//                     var url = Uri.parse('http://127.0.0.1:8000/api/login/');
//                     var response = await http.post(
//                       url,
//                       headers: {'Content-Type': 'application/json'},
//                       body: jsonEncode({'email': email, 'password': password}),
//                     );
//                     if (response.statusCode == 200) {
//                       print('Login Success');
//                     } else {
//                       ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(content: Text('Login Failed')),
//                       );
//                     }
//                   }
//                 },
//                 child: Container(
//                   decoration: BoxDecoration(color: Colors.blueGrey),
//                   height: 50,
//                   width: double.infinity,
//                   child: Center(child: Text('Login')),
//                 ),
//               ),
//             ],
//           )),
//     ));
//   }
// }
