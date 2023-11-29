import 'package:flutter/material.dart';

class MyButtonForm extends StatelessWidget{

  final String text;
  final Function()? OnTap;

  const MyButtonForm({
    super.key,
    required this.text,
    required this.OnTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: OnTap,
      child: Container(
      alignment:  Alignment.center,
      height: 50,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
            blurRadius: 7,
            offset: const Offset(0, 5),
          )
        ]
      ),
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Theme.of(context).colorScheme.onPrimary,
            )
          )
      ),
    );
  }
}