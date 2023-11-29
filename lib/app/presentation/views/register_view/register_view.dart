import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:proyecto_base/app/presentation/views/login_view/widgets/login_divider.dart';
import 'package:proyecto_base/app/presentation/widgets/my_button_form.dart';
import 'package:proyecto_base/app/presentation/widgets/my_social_button.dart';
import 'package:proyecto_base/app/presentation/widgets/my_text_form.dart';

class RegisterView extends StatelessWidget {
  RegisterView({super.key});

  static const String name= 'RegisterView';

  final _email = TextEditingController();
  final _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
        body: SingleChildScrollView(
            child: SafeArea(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children:[
                      SvgPicture.asset('assets/images/gato.svg',
                        colorFilter: ColorFilter.mode(
                            Theme.of(context).colorScheme.primary,
                            BlendMode.srcIn
                        ),
                        alignment: Alignment.topCenter,
                        width: 400,
                        height: 170,
                      ),
                      const Text('Login in your account REGISTRO',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 20),

                      MyTextForm(
                        labelText: 'Email',
                        hintText: 'Enter your email',
                        textInputType: TextInputType.emailAddress,
                        obscureText: false,
                        suffixIcon: false,
                        controller: _email,
                      ),
                      const SizedBox(height: 20),
                      MyTextForm(
                        labelText: 'Password',
                        hintText: 'Enter your Password',
                        textInputType: TextInputType.visiblePassword,
                        obscureText: false,
                        suffixIcon: false,
                        controller: _password,
                      ),
                      const SizedBox(height: 20),
                      MyButtonForm(
                          text: 'Iniciar Sesión',
                          OnTap: (){}
                      ),
                      const SizedBox(height: 20),
                      const LoginDivider(),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MySocialButton(
                              onTap: (){},
                              imagePath: 'assets/icons/google.png'
                          ),
                          MySocialButton(
                              onTap: (){},
                              imagePath: 'assets/icons/instagram.png'
                          ),
                          MySocialButton(
                              onTap: (){},
                              imagePath: 'assets/icons/facebook.png'
                          ),
                        ],
                      ),
                    ],
                  ),
                )
            )
        )
    );
  }
}
