import 'package:flutter/material.dart';
import 'package:flutter_design_projec/constants.dart';
import 'package:flutter_design_projec/screens/screen2.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.black,
                        backgroundColor: const Color.fromARGB(12, 12, 12, 12),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35.0),
                        ),
                        padding: EdgeInsets.symmetric(vertical: 5),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainScreen()),
                        );
                      },
                      child: const Text(
                        "SKIP",
                        style: TextStyle(
                            fontFamily: 'sans',
                            fontSize: 13,
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
              Spacer(),
              CircleAvatar(
                radius: 100,
                backgroundColor: kPrimaryColor,
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/chat-app-design.png',
                    width: 170,
                    height: 170,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 80),
              const Text(
                "Welcome to",
                style: TextStyle(
                  fontFamily: 'sans',
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: kDarkGrayColor,
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                "Halodek",
                style: TextStyle(
                  fontFamily: 'sans',
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: kDarkGrayColor,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 15),
              Text(
                "Halodek supports sending and receiving a variety of media: text, photos, videos, documents, and location, as well as voice calls.",
                style: TextStyle(
                  fontFamily: 'sans',
                  fontSize: 16,
                  color: kDarkGrayColor.withOpacity(0.7),
                ),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 25),
                  ),
                  onPressed: () {
                    print("skip pressed");
                  },
                  child: const Text(
                    "Let's Get Started",
                    style: TextStyle(
                        fontFamily: 'sans',
                        fontSize: 20,
                        color: kWhiteColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {},
                child: RichText(
                  text: const TextSpan(
                    text: "Already have an account? ",
                    style: TextStyle(
                      fontFamily: 'sans',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: kDarkGrayColor,
                    ),
                    children: [
                      TextSpan(
                        text: "Login",
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
