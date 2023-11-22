import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const String name= 'LoginView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: SafeArea(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      children:[
                        SvgPicture.asset('assets/images/logoNegro.svg',
                        colorFilter: ColorFilter.mode(
                          Theme.of(context).colorScheme.primary,
                          BlendMode.srcIn
                        ),
                          alignment: Alignment.topCenter,
                          width: 500,
                        ),
                        const Text('Login in your account',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white24,
                        ),)
                      ],
                  ),
                )
            )
        )
    );
  }
}
