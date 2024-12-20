import 'package:flutter/material.dart';
import 'package:our_market/core/app_colors.dart';
import 'package:our_market/core/widgets/custom_row_widget.dart';
import 'package:our_market/core/widgets/custom_text_from_field.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome To Our Market',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Card(
              color: AppColors.kWhiteColor,
              margin: EdgeInsets.all(24),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  // spacing: 24,
                  children: [
                    CustomTextFormField(
                      labelText: 'Name',
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    CustomTextFormField(
                      labelText: 'Email',
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    CustomTextFormField(
                      labelText: 'Password',
                      isSecure: true,
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.visibility_off,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // Align(
                    //   alignment: Alignment.centerRight,
                    //   child: TextButton(
                    //     onPressed: () {
                    //       Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //           builder: (_) {
                    //             return ForgetPasswordView();
                    //           },
                    //         ),
                    //       );
                    //     },
                    //     child: Text(
                    //       'Forget the password?',
                    //       style: TextStyle(
                    //         color: AppColors.kPrimaryColor,
                    //         fontWeight: FontWeight.w700,
                    //         fontSize: 15,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomRowWidget(
                      text: 'Sign Up',
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomRowWidget(
                      text: 'Sign Up With Google',
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: RichText(
                        text: TextSpan(
                          text: 'Already have an account? ',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          children: [
                            TextSpan(
                              text: 'Sign Up',
                              style: TextStyle(
                                color: AppColors.kPrimaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
