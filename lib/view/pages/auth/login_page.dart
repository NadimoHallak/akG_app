import 'package:akaratg_app/core/const/colors/colors.dart';
import 'package:akaratg_app/view/pages/auth/sign_up_page.dart';
import 'package:akaratg_app/view/widgets/auth_card.dart';
import 'package:akaratg_app/view/widgets/custom_button.dart';
import 'package:akaratg_app/view/widgets/text_field/uv_text_field.dart';
import 'package:akaratg_app/view/widgets/text_field/v_text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final GlobalKey<FormState> _formStateKey = GlobalKey<FormState>();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/auth.jpg"),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: const Color.fromARGB(167, 48, 49, 79),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/logo.png",
                        width: 90,
                        height: 84,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Text(
                        "أهلا بعودتك ، قم بتسجيل الدخول",
                        style: GoogleFonts.tajawal(color: white, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      AuthCard(
                        height: 310,
                        formStateKey: _formStateKey,
                        widget: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            VisibleTextField(
                              hintText: 'رقم الهاتف',
                              controller: phoneNumberController,
                              keyboardType: TextInputType.phone,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            UnVisibleTextField(
                              controller: passwordController,
                              hintText: "كلمة السر",
                              obscure: true,
                            ),
                            Row(
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "هل نسيت كلمة المرور ؟",
                                    style: GoogleFonts.tajawal(
                                      fontSize: 12,
                                      color: white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomButton(
                              onTap: () {},
                              width: 318,
                              heigth: 50,
                              text: "تسجيل الدخول",
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpPage(),
                            ),
                          );
                        },
                        child: RichText(
                          text: TextSpan(
                              text: "ليس لديك حساب ؟ ",
                              style: GoogleFonts.tajawal(color: white),
                              children: [
                                TextSpan(
                                    text: "أنشئ حساباً",
                                    style: GoogleFonts.tajawal(
                                        color: beige,
                                        fontWeight: FontWeight.bold))
                              ]),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
