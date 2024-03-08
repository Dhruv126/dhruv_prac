import 'package:dhruv_prac/view/cat_details/cat_details_screen.dart';
import 'package:dhruv_prac/view/home/home_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static String homeScreen = "/homeScreen";
  static String catDetailScreen = "/catDetailScreen";
}

class OnGenerateRoutes {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/homeScreen":
        return MaterialPageRoute(
            builder: (_) => const HomeScreen(), settings: settings);
      case "/catDetailScreen":
        return MaterialPageRoute(
            builder: (_) {
              final args = settings.arguments as List<dynamic>;
              return CatDetailsScreen(
                catDetailsModel: args[0],
              );
            },
            settings: settings);
    }
    return null;
  }
}
