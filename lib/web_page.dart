import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late double height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              vertical: height * 0.03,
              horizontal: width * 0.05,
            ),
            height: height * 0.90,
            width: width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                height * 0.05,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 4,
                  spreadRadius: 3,
                  offset: const Offset(
                    0,
                    3,
                  ),
                ),
              ],
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    height * 0.05,
                  ),
                  child: Image.asset(
                    'images/desk.jpg',
                    height: height,
                    width: width * 0.40,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: width * 0.05,
                ),
                // Container(
                //   width: width * 0.30,
                //   child: Form(
                //     child: Column(
                //       children: [
                //         Text('Welcome Back'),
                //         TextFormField(
                //           decoration: InputDecoration(
                //               fillColor: Colors.grey,
                //               filled: true,
                //               border: OutlineInputBorder(
                //                 borderRadius:
                //                     BorderRadius.circular(height * 0.04),
                //               )),
                //         ),
                //         TextFormField(),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
