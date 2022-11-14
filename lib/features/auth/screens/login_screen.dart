import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reddity/core/common/loader.dart';
import 'package:reddity/core/common/sign_in.dart';
import 'package:reddity/core/constants/constants.dart';
import 'package:reddity/core/providers/firebase_providers.dart';
import 'package:reddity/features/auth/controller/auth_controller.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loading = ref.watch(authControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          Constants.redditLogoPath,
          height: 40,
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                'Skip',
                style: TextStyle(fontWeight: FontWeight.bold),
              ))
        ],
      ),
      body: loading ? Loader() :  Column(children: [
        const SizedBox(height: 30.0),
        const Text(
          'Dive into Anything',
          style: TextStyle(
              fontSize: 24.0, fontWeight: FontWeight.bold, letterSpacing: 0.5),
        ),
        const SizedBox(height: 30.0),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            Constants.loginEmotePath,
            height: 400,
          ),
        ),
        const SignInButton()
      ]),
    );
  }
}
