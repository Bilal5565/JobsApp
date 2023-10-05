import 'package:flutter/material.dart';

class TravelPage extends StatefulWidget {
  const TravelPage({super.key});

  @override
  State<TravelPage> createState() => _TravelPageState();
}

class _TravelPageState extends State<TravelPage> {
  late double height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: height * 0.30,
                width: width * 0.30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      height * 0.10,
                    ),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/travel.jpg'))),
              ),
              SizedBox(
                width: width * 0.02,
              ),
              Container(
                height: height * 0.30,
                width: width * 0.30,
                margin: EdgeInsets.only(
                  top: height * 0.18,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      height * 0.10,
                    ),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/travel3.jpg'))),
              ),
            ],
          ),
          SizedBox(
            height: height * 0.10,
          ),
          const Text(
            'Travel with ease,',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          Text(
            '       lorem ipsum dolor sit ameat consecture\nlorem ipsum dolor sit ameat consecture adipsiling ,',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade600,
            ),
          ),
          SizedBox(
            height: height * 0.15,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 106, 180, 144),
                minimumSize: Size(
                  width * 0.45,
                  height * 0.09,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    height * 0.02,
                  ),
                ),
                elevation: 5,
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'main');
              },
              child: const Text(
                'Get Started',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ))
        ]),
      ),
    );
  }
}
