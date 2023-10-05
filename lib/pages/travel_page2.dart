import 'package:flutter/material.dart';

class TravelPage2 extends StatefulWidget {
  final String image;
  const TravelPage2({super.key, required this.image});

  @override
  State<TravelPage2> createState() => _TravelPage2State();
}

class _TravelPage2State extends State<TravelPage2> {
  late double height, width;
  List images = [
    'images/travel.jpg',
    'images/travel3.jpg',
    'images/travel4.jpg',
    'images/travel.jpg',
    'images/travel3.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: height * 0.01,
                    horizontal: width * 0.02,
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: height * 0.04,
                    horizontal: width * 0.05,
                  ),
                  width: width,
                  height: height * 0.50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(height * 0.04),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(widget.image),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: height * 0.07,
                        width: width * 0.12,
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(
                            height * 0.04,
                          ),
                        ),
                        child: Center(
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  Icons.arrow_back,
                                  size: 28,
                                  color: Colors.white,
                                ))),
                      ),
                      Container(
                        height: height * 0.07,
                        width: width * 0.12,
                        decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(
                            height * 0.04,
                          ),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: height * 0.01,
                    horizontal: width * 0.05,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'About',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Text(
                        'Lorem ipsum dolor sit ameat consecture\nlorem ipsum dolor sit ameat consecture adipsiling ,lorem ipsum dolor sit ameat consecture\nlorem ipsum dolor sit ameat consecture adipsiling ,',
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      const Text(
                        'Gallery',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        width: width,
                        height: height * 0.15,
                        child: ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, 'home');
                              },
                              child: Container(
                                margin: EdgeInsets.only(
                                  left: width * 0.02,
                                  right: width * 0.02,
                                ),
                                padding: EdgeInsets.only(
                                  top: height * 0.23,
                                  left: width * 0.05,
                                ),
                                width: width * 0.27,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    height * 0.04,
                                  ),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      images[index],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.04,
                    vertical: height * 0.05,
                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 106, 180, 144),
                        minimumSize: Size(
                          width,
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
                        'Book now',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
