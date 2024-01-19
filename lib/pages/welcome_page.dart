import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reskin_protect/models/welcome_page_models.dart';
import 'package:reskin_protect/pages/home_page.dart';
import 'package:sign_in_button/sign_in_button.dart';

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
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? _user;

  @override
  void initState() {
    super.initState();
    _auth.authStateChanges().listen((event) {
      setState(() {
        _user = event;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5CC162),
      body: _user != null ? _redirectHome() : welcomePage(context),
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
                  child: SignInButton(Buttons.google,
                      text: 'Sign In Google',
                      onPressed: _handleSignIn,
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _handleSignIn() {
    try {
      GoogleAuthProvider _googleAuthProvider = GoogleAuthProvider();
      _auth.signInWithProvider(_googleAuthProvider);
    } catch (error) {
      print(error);
    }
  }

  _redirectHome() {
    return const HomePage();
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
