import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  late double width, height;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 9, 2, 35),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey.shade200,
            size: 26,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 38, 34, 52),
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.grey.shade200,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.grey.shade200,
                size: 26,
              ))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height * 0.77,
            width: width,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 38, 34, 52),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(
                  height * 0.03,
                ),
                bottomRight: Radius.circular(
                  height * 0.03,
                ),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: height * 0.03,
                    horizontal: width * 0.03,
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                          height * 0.01,
                        ),
                        child: Image.asset(
                          'images/profile.png',
                          height: height * 0.11,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Bilal Khan',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: height * 0.0001,
                          ),
                          Text(
                            'UX/UI Designer',
                            style: TextStyle(
                                color: Colors.grey.shade300,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: height * 0.0001,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.money_sharp,
                                color: Colors.grey.shade300,
                              ),
                              SizedBox(
                                width: width * 0.01,
                              ),
                              Text(
                                '\$12',
                                style: TextStyle(
                                    color: Colors.grey.shade300,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        height: height * 0.07,
                        width: width * 0.12,
                        decoration: BoxDecoration(
                            color: Colors.lightGreen,
                            borderRadius: BorderRadius.circular(
                              height * 0.10,
                            )),
                        child: Center(
                            child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: height * 0.04,
                        )),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: height * 0.20,
                  width: width,
                  margin: EdgeInsets.symmetric(
                    vertical: height * 0.03,
                    horizontal: width * 0.03,
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: height * 0.03,
                    horizontal: width * 0.04,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(
                      height * 0.01,
                    ),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Best',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        'UI/UX Design',
                        style: TextStyle(
                            letterSpacing: 1,
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Tools',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.03,
                    vertical: height * 0.01,
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: height * 0.07,
                        width: width * 0.14,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 31, 10, 8),
                            borderRadius: BorderRadius.circular(
                              height * 0.10,
                            )),
                        child: const Center(
                          child: Text('Xd',
                              style: TextStyle(
                                color: Colors.pink,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Container(
                        height: height * 0.07,
                        width: width * 0.14,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 18, 15, 35),
                            borderRadius: BorderRadius.circular(
                              height * 0.10,
                            )),
                        child: const Center(
                          child: Text('Ps',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Container(
                        height: height * 0.07,
                        width: width * 0.14,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 21, 15, 9),
                            borderRadius: BorderRadius.circular(
                              height * 0.10,
                            )),
                        child: const Center(
                          child: Text('Ai',
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Container(
                        height: height * 0.07,
                        width: width * 0.14,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 27, 15, 32),
                            borderRadius: BorderRadius.circular(
                              height * 0.10,
                            )),
                        child: const Center(
                          child: Text('Ae',
                              style: TextStyle(
                                color: Colors.purple,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Search Tag',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.01,
                    vertical: height * 0.01,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutlinedButton(
                        onPressed: () {},
                        child: const Text(
                          'Web Design ',
                          style: TextStyle(
                            color: Colors.lightGreen,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: const Text(
                          'UX/UI',
                          style: TextStyle(
                            color: Colors.lightGreen,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: const Text(
                          'App Designer',
                          style: TextStyle(
                            color: Colors.lightGreen,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.03,
                    vertical: height * 0.01,
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.lightGreen,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.lightGreen,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.lightGreen,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.lightGreen,
                      ),
                      const Icon(
                        Icons.star_border,
                        color: Colors.lightGreen,
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Text(
                        'Review(152)',
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: height * 0.07,
            width: width,
            margin: EdgeInsets.symmetric(
              vertical: height * 0.02,
              horizontal: width * 0.04,
            ),
            decoration: BoxDecoration(
              color: Colors.lightGreen,
              borderRadius: BorderRadius.circular(
                height * 0.04,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'CONTACT NOW',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Container(
                  height: height * 0.06,
                  width: width * 0.12,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        height * 0.10,
                      )),
                  child: Center(
                      child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.lightGreen,
                    size: height * 0.03,
                  )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
