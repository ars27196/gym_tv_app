import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym_app/utils/app_colors.dart';
import 'package:gym_app/utils/app_theme.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.black,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 8.0),
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Create Account",
                    style: AppTheme.getInstance().titleTextWhite,
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  width: 420,
                  child: TextFormField(
                    style: AppTheme.getInstance().textWhite,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: "Full Name",
                      hintStyle: AppTheme.getInstance().hintTextGrey,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(
                          Icons.text_fields,
                          color: AppColors.hintGrey,
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: AppColors.white,
                        width: 1,
                      )),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: AppColors.white,
                        width: 1,
                      )),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: AppColors.white,
                        width: 1,
                      )),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: SizedBox(
                  width: 420,
                  child: TextFormField(
                    style: AppTheme.getInstance().textWhite,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: AppTheme.getInstance().hintTextGrey,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: SvgPicture.asset('assets/images/email_icon.svg',
                            semanticsLabel: 'vector'),
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: AppColors.white,
                        width: 1,
                      )),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: AppColors.white,
                        width: 1,
                      )),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: AppColors.white,
                        width: 1,
                      )),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: SizedBox(
                  width: 420,
                  child: TextFormField(
                    style: AppTheme.getInstance().textWhite,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: "User Name",
                      hintStyle: AppTheme.getInstance().hintTextGrey,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(
                          Icons.drive_file_rename_outline,
                          color: AppColors.hintGrey,
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: AppColors.white,
                        width: 1,
                      )),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: AppColors.white,
                        width: 1,
                      )),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: AppColors.white,
                        width: 1,
                      )),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: SizedBox(
                  width: 420,
                  child: TextFormField(
                    style: AppTheme.getInstance().textWhite,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: "Phone Number",
                      hintStyle: AppTheme.getInstance().hintTextGrey,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(
                          Icons.phone,
                          color: AppColors.hintGrey,
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: AppColors.white,
                        width: 1,
                      )),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: AppColors.white,
                        width: 1,
                      )),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: AppColors.white,
                        width: 1,
                      )),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: SizedBox(
                  width: 420,
                  child: TextFormField(
                    obscureText: true,
                    style: AppTheme.getInstance().textWhite,
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: AppTheme.getInstance().hintTextGrey,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: SvgPicture.asset(
                            'assets/images/password_icon.svg',
                            semanticsLabel: 'vector'),
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: AppColors.white,
                        width: 1,
                      )),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: AppColors.white,
                        width: 1,
                      )),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: AppColors.white,
                        width: 1,
                      )),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Center(
                child: SizedBox(
                  width: 420,
                  child: TextFormField(
                    obscureText: true,
                    style: AppTheme.getInstance().textWhite,
                    decoration: InputDecoration(
                      hintText: "Confirm Password",
                      hintStyle: AppTheme.getInstance().hintTextGrey,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: SvgPicture.asset(
                            'assets/images/password_icon.svg',
                            semanticsLabel: 'vector'),
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: AppColors.white,
                        width: 1,
                      )),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: AppColors.white,
                        width: 1,
                      )),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: AppColors.white,
                        width: 1,
                      )),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Center(
                child: Container(
                  width: 240,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(6)),
                      color: AppColors.red),
                  child: Center(
                      child: Text(
                    "Create Account",
                    style: AppTheme.getInstance().textWhite,
                  )),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                        text: "Already have an account? ",
                        style: AppTheme.getInstance().textWhite,
                        children: [
                          TextSpan(
                            text: 'Login In',
                            style: AppTheme.getInstance().titleTextRed18,
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Navigator.of(context).pop(),
                          )
                        ]),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
