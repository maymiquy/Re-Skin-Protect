import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reskin_protect/models/home_page_models.dart';

class HomeInfo extends StatefulWidget {
  const HomeInfo({super.key});

  @override
  State<HomeInfo> createState() => _HomeInfoState();
}

class HomeInfoNav extends StatelessWidget {
  const HomeInfoNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          homeInfoOne(),
          homeInfoTwo(),
          homeInfoThree(),
        ],
      ),
    );
  }

  Stack homeInfoOne() {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
            color: const Color(0xFFC7EEE3),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset('assets/images/ellipse-2.png', scale: 0.7),
        ),
        Positioned(
          top: 55,
          left: 10,
          child: Text(
            "Daur\nUlang",
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF59D4AD),
            ),
          ),
        ),
        Positioned(
          top: 10,
          left: 80,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: const Color(0xFF59D4AD),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Image.asset(
                'assets/images/recycle.png',
                scale: 0.7,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Stack homeInfoThree() {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(
            color: const Color(0xffE4E7FB),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset('assets/images/ellipse-3.png', scale: 0.7),
        ),
        Positioned(
          top: 55,
          left: 10,
          child: Text(
            "Mitra\nBisnis",
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF467DF8),
            ),
          ),
        ),
        Positioned(
          top: 10,
          left: 70,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color(0xff467DF8),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Image.asset(
                'assets/images/handshake.png',
                scale: 0.6,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Container homeInfoTwo() {
    return Container(
      margin: const EdgeInsets.only(right: 10, left: 10),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              color: const Color(0xFFFFECE4),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset('assets/images/ellipse-1.png', scale: 0.55),
          ),
          Positioned(
            top: 55,
            left: 10,
            child: Text(
              "Tukarkan\nPoin",
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: const Color(0xFFF7A582),
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 80,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: const Color(0xFFF7A582),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Text(
                  "Rp",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFBFB),
      body: homePage(),
    );
  }

  Column homePage() {
    return Column(
      children: [
        AppBar(
          toolbarHeight: 80,
          title: const Center(
            child: Text(
              'Re-Skin Protect',
              style: TextStyle(
                  color: Color(0xFF256F2A),
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
        ),
        const ProfileInfo(),
        const HomeInfo(),
        Container(
          margin: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20, bottom: 5),
                child: Text(
                  'Mari Selamatkan Lingkungan',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const HomeInfoNav()
            ],
          ),
        )
      ],
    );
  }
}

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        textBaseline: TextBaseline.alphabetic,
        children: [
          SizedBox(
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    height: 70,
                    width: 70,
                    color: const Color(0xFF5CC162),
                    child: Image.asset(
                      'assets/images/profile.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Poin',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      '100',
                      style: TextStyle(
                        color: Color(0xFF256F2A),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          TextButton(
              onPressed: null,
              child: Container(
                width: 80,
                height: 30,
                decoration: const BoxDecoration(
                  color: Color(0xFF03870C),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: const Center(
                  child: Text(
                    'Lihat Poin',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

class _HomeInfoState extends State<HomeInfo> {
  final List<HomeInfoModel> _homeInfoModel = HomeInfoModel.getList();

  late PageController _pageController;
  late Timer _timer;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 135,
      child: PageView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        controller: _pageController,
        children: [
          homeInfoOne(),
          homeInfoTwo(),
          homeInfoThree(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  Container homeInfoOne() {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [
                Color(0xFFC7EEE3),
                Color(0xFF8ED493),
              ], begin: Alignment.centerLeft, end: Alignment.centerRight),
              borderRadius: BorderRadius.circular(15),
            ),
            height: 135,
            width: 400,
            child: Container(
              margin: const EdgeInsets.only(
                left: 90,
              ),
              child: Center(
                child: Text(_homeInfoModel[0].description,
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              _homeInfoModel[0].image,
            ),
          ),
        ],
      ),
    );
  }

  Container homeInfoThree() {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF9CCAD7),
        borderRadius: BorderRadius.circular(15),
      ),
      height: 135,
      width: 450,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              _homeInfoModel[2].image,
              scale: 0.86,
            ),
          ),
          Positioned(
            top: 42,
            left: 140,
            child: Center(
              child: Text(_homeInfoModel[2].description,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
            ),
          ),
        ],
      ),
    );
  }

  Container homeInfoTwo() {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFC7EEE3),
              borderRadius: BorderRadius.circular(15),
            ),
            height: 135,
            width: 400,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Stack(
                  children: [
                    Positioned(
                      top: 20,
                      left: 10,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            gradient: RadialGradient(
                              colors: [
                                const Color(0xFF03870C).withOpacity(0.5),
                                const Color(0xFFC7EEE3).withOpacity(0.65),
                              ],
                              center: Alignment.center,
                              radius: 0.9,
                              stops: const [0.1, 0.55],
                            ),
                          ),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        _homeInfoModel[1].image,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  child: Center(
                    child: Text(_homeInfoModel[1].description,
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                  ),
                ),
              ],
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'assets/images/home-3.png',
              scale: 2.7,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    const int durationTime = 5; // in seconds
    super.initState();
    _pageController = PageController(viewportFraction: 0.9);
    _timer =
        Timer.periodic(const Duration(seconds: durationTime), (Timer timer) {
      if (_pageController.page!.round() == _pageController.page &&
          _pageController.page != _homeInfoModel.length - 1) {
        _pageController.animateToPage(
          (_pageController.page! + 1).toInt(),
          duration: const Duration(milliseconds: 800),
          curve: Curves.easeIn,
        );
      } else {
        _pageController.animateToPage(
          0,
          duration: const Duration(milliseconds: 800),
          curve: Curves.easeIn,
        );
      }
    });
  }
}
