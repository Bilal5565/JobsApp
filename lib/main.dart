// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:laravel_app/finstagram/views/signUp_view.dart';
import 'package:laravel_app/finstagram/views/login_view.dart';
import 'package:laravel_app/jobs/main_page.dart';
import 'package:laravel_app/jobs/order_page.dart';
import 'package:laravel_app/pages/travel_page.dart';
import 'package:laravel_app/pages/travel_page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        useMaterial3: true,
      ),
      initialRoute: 'main_page',
      routes: {
        '/': (context) => TravelPage(),
        'main': (context) => TravelPage1(),
        'main_page': (context) => MainPage(),
        'order_page': (context) => OrderPage(),
        'login': (context) => LoginScreen(),
        'signup': (context) => SignUpScreen()
      },
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   Student student = Student();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: const Text('Laravel Backend'),
//       ),
//       body: Container(
//         child: FutureBuilder(
//             future: student.getAllStudent(),
//             builder: (context, snapshot) {
//               // print(snapshot.data);
//               if (snapshot.hasData) {
//                 return ListView.builder(
//                     itemCount: snapshot.data?.length,
//                     itemBuilder: (context, index) {
//                       return Card(
//                         child: ListTile(
//                           title: Text(
//                             snapshot.data![index]['stuname'],
//                             style: TextStyle(
//                               fontSize: 25,
//                             ),
//                           ),
//                           subtitle: Text(snapshot.data![index]['email']),
//                         ),
//                       );
//                     });
//               } else {
//                 return Center(
//                   child: Text('no data found'),
//                 );
//               }
//             }),
//       ),
//     );
//   }
// }
