import 'package:calculator/screens/overview_screen.dart';
import 'package:calculator/screens/percentage_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final GoRouter _router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        name: 'overview',
        path: '/',
        builder: (context, state) => OverviewScreen(),
        routes: [
          GoRoute(
            path: 'percentage',
            builder: (context, state) => PercentageScreen(name: state.extra as String),
          ),
        ],
      ),
    ],
  );
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.orange,
        ),
      ),
      routerConfig: _router,
      // home: const OverviewScreen(),
    );
  }
}
