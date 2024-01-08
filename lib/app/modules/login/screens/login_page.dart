import 'package:crm_wedding/app/modules/login/common/common.dart';
import 'package:crm_wedding/app/modules/login/router/router.dart';
import 'package:crm_wedding/app/modules/login/screens/fade_animationtest.dart';
import 'package:crm_wedding/app/modules/login/screens/signup_page.dart';
import 'package:crm_wedding/app/modules/login/widgets/custom_widget.dart';
import 'package:crm_wedding/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:go_router/go_router.dart';

import 'forget_password.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7EBE1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 0,
        backgroundColor: Color(0xffF7EBE1).withAlpha(200),
      ),
      body: WillPopScope(
        onWillPop: () async {
          SystemNavigator.pop();
          return true;
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FadeInAnimation(
                          delay: 1.0,
                          child: Image.asset(
                            'assets/images/logo_wedding.png',
                            fit: BoxFit.contain,
                            height: 90,
                          ),
                        ),
                        FadeInAnimation(
                          delay: 1.3,
                          child: Text(
                            "Selamat Datang",
                            style: Common().titelTheme,
                          ),
                        ),
                        FadeInAnimation(
                          delay: 1.6,
                          child: Text(
                            "kembali!",
                            style: Common().titelTheme,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Form(
                      child: Column(
                        children: [
                          FadeInAnimation(
                            delay: 1.9,
                            child: const CustomTextFormField(
                              hinttext: 'Masukkan email Anda',
                              obsecuretext: false,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          FadeInAnimation(
                            delay: 2.2,
                            child: TextFormField(
                              obscureText: flag ? true : false,
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(18),
                                  hintText: "Masukkan kata sandi Anda",
                                  hintStyle: Common().hinttext,
                                  border: OutlineInputBorder(
                                      borderSide:
                                          const BorderSide(color: Colors.black),
                                      borderRadius: BorderRadius.circular(12)),
                                  suffixIcon: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                          Icons.remove_red_eye_outlined))),
                            ),
                          ),
                          FadeInAnimation(
                            delay: 2.5,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                  onPressed: () {
                                    Get.to(ForgetPasswordPage());
                                  },
                                  child: Text(
                                    "Lupa Password?",
                                    style: Common().semiboldblack,
                                  )),
                            ),
                          ),
                          FadeInAnimation(
                            delay: 2.8,
                            child: CustomElevatedButton(
                              message: "Masuk",
                              function: () {
                                Get.toNamed(Routes.HOME);
                                if (flag) {
                                  setState(() {
                                    flag = false;
                                  });
                                } else {
                                  setState(() {
                                    flag = true;
                                  });
                                }
                              },
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SizedBox(
                      height: 160,
                      width: double.infinity,
                      child: Column(
                        children: [
                          FadeInAnimation(
                            delay: 2.2,
                            child: Text(
                              "Atau Masuk dengan",
                              style: Common().semiboldblack,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          FadeInAnimation(
                            delay: 2.4,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 10, bottom: 10, right: 30, left: 30),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset(
                                      "assets/images/facebook_ic (1).svg"),
                                  SvgPicture.asset(
                                      "assets/images/google_ic-1.svg"),
                                  Image.asset("assets/images/Vector.png")
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  FadeInAnimation(
                    delay: 2.8,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Belum punya akun?",
                            style: Common().hinttext,
                          ),
                          TextButton(
                              onPressed: () {
                                Get.to(SignupPage());
                              },
                              child: Text(
                                "Daftar sekarang",
                                style: Common().mediumTheme,
                              )),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
