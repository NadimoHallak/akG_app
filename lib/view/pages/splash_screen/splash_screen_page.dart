import 'package:akaratg_app/core/const/colors/colors.dart';
import 'package:akaratg_app/view/pages/auth/login_page.dart';
import 'package:akaratg_app/view/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: Color(0xA730314F),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/splash_screen.jpg"),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color.fromARGB(188, 48, 49, 79),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                "assets/images/logo.png",
                width: 134,
                height: 121,
              ).animate().move(
                    curve: Curves.easeIn,
                    begin: const Offset(-50, -200),
                    end: const Offset(0, 0),
                    duration: 1000.ms,
                  ),
              const SizedBox(
                height: 30,
              ),
              RichText(
                textAlign: TextAlign.end,
                text: TextSpan(
                  style: GoogleFonts.tajawal(
                      color: Colors.white,
                      fontSize: 29,
                      fontWeight: FontWeight.bold),
                  text: "منزل أحلامك\n",
                  children: [
                    TextSpan(
                      style: GoogleFonts.tajawal(
                          fontWeight: FontWeight.normal, fontSize: 20),
                      text: "أقرب إليك مما ",
                      children: [
                        TextSpan(
                          text: "تتخيل",
                          style: GoogleFonts.tajawal(
                            fontWeight: FontWeight.bold,
                            fontSize: 29,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ).animate().slideX(duration: 1000.ms),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                width: 200,
                heigth: 50,
                text: "متابعة",
              ),
              const SizedBox(
                height: 90,
              )
            ],
          ),
        )
      ],
    );
  }
}
