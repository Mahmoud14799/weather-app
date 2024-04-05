import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/Weather_Cubit/weather_cubit.dart';
import 'package:weather_app/pages/home_page.dart';
import 'package:weather_app/presentation/app_router.dart';
import 'package:weather_app/services/weather_service.dart';

void main() {
  runApp(
    BlocProvider(
        create: (context) {
          return WeatherCubit(WeatherService());
        },
        child: WeatherApp(
          appRouter: AppRouter(),
        )),
  );
}

class WeatherApp extends StatelessWidget {
  final AppRouter appRouter;

  const WeatherApp({Key? key, required this.appRouter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'weather_app',
      home: HomePage(),
      onGenerateRoute: appRouter.generatRouter,
    );
  }
}
