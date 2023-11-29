import 'package:flutter/material.dart';

class MyTextForm extends StatelessWidget{

  final String labelText;
  final String hintText;
  final TextInputType textInputType;
  final bool obscureText;
  final bool suffixIcon;
  final TextEditingController controller;

  const MyTextForm({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.textInputType,
    required this.obscureText,
    required this.suffixIcon,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
            blurRadius: 7,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: textInputType,
        decoration: InputDecoration(
          labelText: labelText,
            labelStyle: TextStyle(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
              fontSize: 16,
              fontWeight: FontWeight.w100,
          ),
            hintText: hintText,
          hintStyle: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 16,
              fontWeight: FontWeight.w100,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),

        ),

      ),
    );
  }
}