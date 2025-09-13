import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_flutter/src/constants/route_names.dart';
import 'package:firebase_flutter/src/constants/colors.dart';
import 'package:firebase_flutter/src/constants/sizes.dart';
import 'package:firebase_flutter/src/features/presentation/components/label.dart';
import 'package:icons_plus/icons_plus.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Body(),
      bottomNavigationBar: Bottom(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: AppSizes.defaultSpace,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: AppSizes.lg,
                right: AppSizes.lg,
                left: AppSizes.lg,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: AppSizes.defaultBtwItems,
                children: [
                  Text(
                    "Welcome Back! 👋",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Text(
                    "Sign in to access your personalized habit tracking experience",
                    softWrap: true,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: AppColors.labelLight,
                    ),
                  ),
                  Label(
                    label: "Email",
                    child: TextField(
                      decoration: InputDecoration(hintText: "Email"),
                    ),
                  ),
                  Label(
                    label: "Password",
                    child: TextField(
                      decoration: InputDecoration(hintText: "Password"),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Checkbox(
                        value: isChecked,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            AppSizes.borderRadiusSm,
                          ),
                        ),
                        side: BorderSide(color: AppColors.primary, width: 2),
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value ?? false;
                          });
                        },
                      ),
                      Text(
                        "Remember me ",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSizes.lg),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: AppColors.lightBorder,
                      thickness: 1,
                      endIndent: 10,
                    ),
                  ),
                  Text("or", style: Theme.of(context).textTheme.titleSmall),
                  Expanded(
                    child: Divider(
                      color: AppColors.lightBorder,
                      thickness: 1,
                      indent: 10,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: AppSizes.lg,
                right: AppSizes.lg,
                bottom: AppSizes.lg,
              ),
              child: Column(
                spacing: AppSizes.defaultBtwItems,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: BrandLogo(
                              BrandLogos.google,
                              size: AppSizes.fontXl,
                            ),
                          ),
                          Text('Continue with Google'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: BrandLogo(
                              BrandLogos.apple,
                              size: AppSizes.fontXl,
                            ),
                          ),
                          Text('Continue with Apple'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: BrandLogo(
                              BrandLogos.facebook_f,
                              size: AppSizes.fontXl,
                            ),
                          ),
                          Text('Continue with Facebook'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: BrandLogo(
                              BrandLogos.instagram,
                              size: AppSizes.fontXl,
                            ),
                          ),
                          Text('Continue with Instagram'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: AppColors.lightBorder)),
      ),
      child: BottomAppBar(
        color: AppColors.light,
        child: ElevatedButton(onPressed: () {}, child: Text("Sign in")),
      ),
    );
  }
}
