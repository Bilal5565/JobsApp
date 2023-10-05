import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late double width, height;
  List<Color> colors = [
    Colors.orange,
    Colors.blue,
    Colors.green,
    Colors.redAccent,
  ];
  List<IconData> icons = [
    CupertinoIcons.pencil_outline,
    CupertinoIcons.scribble,
    CupertinoIcons.cube,
    CupertinoIcons.doc_append,
  ];
  List<String> text = [
    'Graphic Design',
    'UI/UX Design',
    '3-D Design',
    'Content Writing',
  ];
  List<String> text2 = [
    '\$12/ph',
    '\$18/ph',
    '\$14/ph',
    '\$20/ph',
  ];
  List<String> text3 = [
    'Logo, banner, poster,\n designer',
    'App, Web, Product\n branding',
    '3-D, Design,\n 3-D artist ',
    'Content Writing, \n story writing'
  ];
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 0, 26),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: height * 0.03,
                  horizontal: width * 0.02,
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(
                        height * 0.10,
                      ),
                      child: Image.asset(
                        'images/profile.png',
                        height: height * 0.08,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome Back!',
                          style: TextStyle(
                            color: Colors.lightGreen,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Bilal Khan',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    const Spacer(),
                    Stack(
                      children: [
                        Icon(
                          Icons.notifications_none,
                          color: Colors.white,
                          size: height * 0.055,
                        ),
                        Positioned(
                          left: width * 0.062,
                          bottom: height * 0.003,
                          child: Text(
                            '.',
                            style: TextStyle(
                              fontSize: height * 0.07,
                              fontWeight: FontWeight.bold,
                              color: Colors.lightGreen,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                margin: EdgeInsets.only(
                  top: height * 0.04,
                  left: width * 0.03,
                  right: width * 0.03,
                ),
                height: height * 0.08,
                width: width,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 38, 34, 52),
                    borderRadius: BorderRadius.circular(
                      height * 0.01,
                    )),
                child: Center(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search here...',
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey.shade500,
                        size: 26,
                      ),
                      suffixIcon: const Icon(
                        Icons.mic,
                        color: Colors.lightGreen,
                        size: 26,
                      ),
                      hintStyle: TextStyle(
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: height * 0.03,
                  horizontal: width * 0.03,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Popular Job',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        const Text(
                          'See All',
                          style: TextStyle(
                            color: Colors.lightGreen,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.01,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: Colors.lightGreen,
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.22,
                width: width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'order_page');
                      },
                      child: Container(
                        // padding: EdgeInsets.all(height * 0.04),
                        margin: EdgeInsets.only(left: width * 0.03),
                        height: height * 0.20,
                        width: width * 0.40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(height * 0.02),
                          color: const Color.fromARGB(255, 38, 34, 52),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: height * 0.02,
                            ),
                            Container(
                              height: height * 0.15,
                              width: width * 0.26,
                              decoration: BoxDecoration(
                                  color: colors[index],
                                  borderRadius: BorderRadius.circular(
                                    height * 0.15,
                                  )),
                              child: Center(
                                  child: Icon(
                                icons[index],
                                color: Colors.white,
                                size: height * 0.075,
                              )),
                            ),
                            SizedBox(
                              height: height * 0.015,
                            ),
                            Text(
                              text[index],
                              style: TextStyle(
                                color: Colors.grey.shade200,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: height * 0.03,
                  horizontal: width * 0.03,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Recent Job',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        const Text(
                          'See All',
                          style: TextStyle(
                            color: Colors.lightGreen,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          width: width * 0.01,
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: Colors.lightGreen,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.27,
                width: width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.all(
                        height * 0.015,
                      ),
                      margin: EdgeInsets.only(
                        right: width * 0.02,
                        left: width * 0.025,
                        bottom: height * 0.02,
                      ),
                      height: height * 0.24,
                      width: width * 0.80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(height * 0.02),
                        color: const Color.fromARGB(255, 38, 34, 52),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: height * 0.09,
                                width: width * 0.16,
                                decoration: BoxDecoration(
                                    color: colors[index],
                                    borderRadius: BorderRadius.circular(
                                      height * 0.10,
                                    )),
                                child: Center(
                                  child: Icon(
                                    icons[index],
                                    color: Colors.white,
                                    size: height * 0.06,
                                  ),
                                ),
                              ),
                              Text(
                                text2[index],
                                style: const TextStyle(
                                  color: Colors.lightGreen,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Text(
                            text[index],
                            style: TextStyle(
                              color: Colors.grey.shade200,
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            text3[index],
                            style: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
