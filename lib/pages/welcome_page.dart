import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reskin_protect/models/welcome_page_models.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      width: 140,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Create Account?', style: TextStyle(color: Colors.white)),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/sign-up');
            },
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(0),
              minimumSize: const Size(0, 0),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: const Text(
              'Here',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SwipeHome extends StatefulWidget {
  const SwipeHome({super.key});

  @override
  State<SwipeHome> createState() => _SwipeHomeState();
}

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _HomePageState();
}

class _HomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5CC162),
      body: welcomePage(context),
    );
  }

  welcomePage(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome Back\nRe-Skin Protect',
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SwipeHome(),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Container(
                margin: const EdgeInsets.only(top: 15),
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Sign In',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF5CC162),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const CreateAccount()
        ],
      ),
    );
  }
}

class _SwipeHomeState extends State<SwipeHome> {
  int _currentPage = 0;

  final List<HomePageModel> _homePageModel = HomePageModel.getList();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 35),
          height: 330,
          child: PageView.builder(
            onPageChanged: (value) => setState(() {
              _currentPage = value;
            }),
            controller: PageController(
                viewportFraction:
                    0.85), // Set viewportFraction to control the size of the pages
            itemCount: _homePageModel.length,
            itemBuilder: (context, index) {
              return Center(
                // Center the Column
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(_homePageModel[index].imagePath, height: 280),
                    Text(_homePageModel[index].subtitle,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                  ],
                ),
              );
            },
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 15),
          width: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                _homePageModel.length,
                (index) => AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.only(right: 5),
                      height: 10,
                      width: _currentPage == index ? 30 : 10,
                      decoration: BoxDecoration(
                        color: _currentPage == index
                            ? Colors.white
                            : Colors.white.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    )),
          ),
        ),
      ],
    );
  }
}
