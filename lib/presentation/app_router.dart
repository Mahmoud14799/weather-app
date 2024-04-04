import 'package:flutter/material.dart';
import 'package:weather_app/pages/History_page.dart';
import 'package:weather_app/pages/Success_weather.dart';
import 'package:weather_app/pages/about_page.dart';
import 'package:weather_app/pages/home_page.dart';
import 'package:weather_app/pages/home_page_weather.dart';
import 'package:weather_app/pages/search_page.dart';

class AppRouter {
  Route generatRouter(RouteSettings settings) {
    switch (settings.name) {
      case 'home_page':
        return MaterialPageRoute(builder: (_) => HomePage());
      case 'search_page':
        return MaterialPageRoute(builder: (_) => SearchPage());
      case 'success_page':
        return MaterialPageRoute(builder: ((context) => SuccessWeather()));
      case 'Home_Page_Weather':
        return MaterialPageRoute(builder: (_) => const HomePageWeather());
      case 'History_page':
        return MaterialPageRoute(builder: (_) => const HistoryPage());
        case 'about_page':
        return MaterialPageRoute(builder: (_) => const AboutPage());
      default:
        throw Exception('Invalid route: ${settings.name}');
    }
  }
}
