import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:praktek/pages/crud/create.dart';
import 'package:praktek/pages/crud/lihat_data.dart';
import 'package:praktek/pages/information.dart';
import 'package:praktek/pages/login.dart';

class HomeScreen extends StatelessWidget {
  final user;
  const HomeScreen({
    super.key,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        // padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            _header(),
            SizedBox(height: 60),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ListData())),
                      child: Container(
                        height: 70,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color(0xffd7d7d7),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.person_pin_rounded,
                                  size: 30,
                                ),
                                SizedBox(width: 20),
                                Text(
                                  "Lihat Data ",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CreateData())),
                      child: Container(
                        height: 70,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color(0xffd7d7d7),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: double.infinity,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.add_chart,
                                  size: 30,
                                ),
                                SizedBox(width: 20),
                                Text(
                                  "Buat Data ",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const InforPages())),
                      child: Container(
                        height: 70,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color(0xffd7d7d7),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: double.infinity,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.info_outline,
                                  size: 30,
                                ),
                                SizedBox(width: 20),
                                Text(
                                  "Tentang Kami ",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPages())),
                      child: Container(
                        height: 70,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Color(0xffd7d7d7),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: double.infinity,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.info_outline,
                                  size: 30,
                                ),
                                SizedBox(width: 20),
                                Text(
                                  "Log Out ",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container _header() {
    return Container(
      height: 340,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xff094067),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "Welcome , $user",
            style: TextStyle(
              color: Colors.white,
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Image.asset("assets/dashboard.png")
        ],
      ),
    );
  }
}
