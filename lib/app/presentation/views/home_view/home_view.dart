import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const String name = 'home_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(
                Icons.account_circle_sharp,
                  color: Colors.white
              )
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Column(
              children: [
                ElevatedButton(
                    onPressed: (){},
                    child: const Text('Soy un botón'
                    )
                ),
                 Text('Holi', style: Theme.of(context).textTheme.bodySmall),
                Text('Holaaaa', style: Theme.of(context).textTheme.bodyMedium),
                Text('Respirar', style: Theme.of(context).textTheme.bodyLarge),
              ],
            )
          ],
        ),
      ),
    );
  }
}
