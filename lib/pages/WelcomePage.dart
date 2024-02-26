import 'package:flutter/material.dart';
import 'package:mobile_parmesan/Components/PrimaryButton.dart';
import 'package:mobile_parmesan/Controller/AuthController.dart';
import 'package:mobile_parmesan/config/Colors.dart';
import 'package:get/get.dart';
import 'package:mobile_parmesan/pages/HomePage/Home.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController= Get.put(AuthController());
     return Scaffold(
      body: Column(
        children: [
          Container(
            height: 500,
            padding: const EdgeInsets.all(20),
            color: primaryColor,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 40),
                    Image.asset(
                      "Assets/Images/Reading.png",
                      width: 320,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Parmesan E - Book Store",
                      style:
                          Theme.of(context).textTheme.headlineLarge?.copyWith(
                                color: Theme.of(context).colorScheme.background,
                              ),
                    ),
                    const SizedBox(height: 10),
                    Flexible(
                      child: Text(
                        "Here you can find best book for you and you can also read book and listens book ",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              color: Theme.of(context).colorScheme.background,
                            ),
                      ),
                    ),
                  ],
                ),
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Disclaimer",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        "n publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(10),
            child: PrimaryButton(
              btnName: "Login With Google", ontap: () { authController.loginWithEmail();},
            
            ),
          )
        ],
      ),
    );
  }
}