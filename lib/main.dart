import 'package:cinevo/core/utils/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Cinevo());
}

class Cinevo extends StatelessWidget {
  const Cinevo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
