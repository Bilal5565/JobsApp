import 'package:flutter/material.dart';
import 'package:laravel_app/pages/travel_page2.dart';

class TravelPage1 extends StatefulWidget {
  const TravelPage1({super.key});

  @override
  State<TravelPage1> createState() => _TravelPage1State();
}

class _TravelPage1State extends State<TravelPage1> {
  late double height, width;

  List images = [
    'images/travel.jpg',
    'images/travel3.jpg',
    'images/travel4.jpg',
    'images/travel.jpg',
    'images/travel3.jpg',
  ];
  List text = ['GullFoss', 'Kairo', 'London', 'New York', 'Islamabad'];
  List subtitle = ['IceLand', 'Egypt', 'England', 'USA', 'Pakistan'];
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: height * 0.05,
                horizontal: width * 0.04,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      size: 30,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(height * 0.12),
                    child: Image.asset(
                      'images/profile.png',
                      height: height * 0.08,
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              'Where do you\n   want to go?',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                letterSpacing: 3,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: height * 0.04,
                horizontal: width * 0.03,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 28,
                  ),
                  isDense: true,
                  fillColor: Colors.grey.shade100,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      height * 0.03,
                    ),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: height * 0.01,
                horizontal: width * 0.03,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Recommended',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(
                    Icons.more_horiz,
                    size: 28,
                    color: Colors.grey.shade500,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: width,
              height: height * 0.33,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => TravelPage2(image: images[index]),
                        ),
                      );
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
                      width: width * 0.50,
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            text[index],
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            subtitle[index],
                            style: TextStyle(
                              color: Colors.grey.shade400,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: height * 0.02,
                horizontal: width * 0.03,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Trending this month',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(
                    Icons.more_horiz,
                    size: 28,
                    color: Colors.grey.shade500,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: width,
              height: height * 0.20,
              child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(
                        left: width * 0.02,
                        right: width * 0.02,
                        bottom: height * 0.04),
                    padding: EdgeInsets.symmetric(
                        vertical: height * 0.02, horizontal: width * 0.03),
                    width: width * 0.60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          height * 0.05,
                        ),
                        color: Colors.grey.shade100),
                    child: Row(
                      children: [
                        SizedBox(
                          width: width * 0.20,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(height * 0.04),
                            child: Image.asset(
                              images[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.07,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: height * 0.01,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                text[index],
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                subtitle[index],
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // child: Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     Text(
                    //       text[index],
                    //       style: const TextStyle(
                    //         color: Colors.white,
                    //         fontWeight: FontWeight.w600,
                    //         fontSize: 18,
                    //       ),
                    //     ),
                    //     Text(
                    //       subtitle[index],
                    //       style: TextStyle(
                    //         color: Colors.grey.shade400,
                    //         fontWeight: FontWeight.w600,
                    //         fontSize: 16,
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
