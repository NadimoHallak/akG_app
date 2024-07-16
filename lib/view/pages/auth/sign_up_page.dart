import 'package:akaratg_app/core/const/colors/colors.dart';
import 'package:akaratg_app/view/widgets/auth_card.dart';
import 'package:akaratg_app/view/widgets/custom_button.dart';
import 'package:akaratg_app/view/widgets/custom_circle_avatar.dart';
import 'package:akaratg_app/view/widgets/text_field/uv_text_field.dart';
import 'package:akaratg_app/view/widgets/text_field/v_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final GlobalKey<FormState> _formStateKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
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
            color: const Color.fromARGB(188, 48, 49, 79),
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
                        width: 46,
                        height: 48,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "قم بإنشاء حساب وتمتع بخدمات عقاراتجي",
                        style: GoogleFonts.tajawal(color: white, fontSize: 12),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      AuthCard(
                        height: 570,
                        formStateKey: _formStateKey,
                        widget: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomCircleAvatar(
                              mainIcon: Icons.person,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              "صورة الحساب",
                              style: GoogleFonts.tajawal(
                                  color: const Color(0xFFb9b9b9)),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            VisibleTextField(
                              controller: nameController,
                              hintText: 'الاسم',
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: VisibleTextField(
                                    controller: phoneNumberController,
                                    hintText: '963+ | رقم الهاتف',
                                    keyboardType: TextInputType.phone,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  width: 55,
                                  height: 55,
                                  decoration: BoxDecoration(
                                    color: white,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Image.asset(
                                    "assets/images/sy.png",
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            UnVisibleTextField(
                              controller: passwordController,
                              hintText: "كلمة السر",
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            UnVisibleTextField(
                              controller: confirmPasswordController,
                              hintText: "تأكيد كلمة السر",
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              height: 55,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 17),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: white,
                              ),
                              child: Text(
                                "الموقع",
                                textAlign: TextAlign.right,
                                style: GoogleFonts.tajawal(
                                  color: hintTextColor,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            CustomButton(
                              width: 318,
                              heigth: 50,
                              onTap: () {},
                              text: "إنشاء حساب",
                            )
                          ],
                        ),
                      ),
                    ],
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
