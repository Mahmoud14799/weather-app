import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/Weather_Cubit/weather_cubit.dart';
import 'package:weather_app/cubits/Weather_Cubit/weather_state.dart';

import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/pages/Success_weather.dart';
import 'package:weather_app/pages/home_page_weather.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  WeatherModel? weatherData;

  HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<WeatherCubit, WeatherState>(builder: (context, state) {
        if (state is WeatherLoding) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is WeatherSuccess) {
          return SuccessWeather(weatherData: state.weatherModel);
          // } else if (state is BackToSearch) {
          //   return SuccessWeather(weatherData: state.weatherModel);
        } else if (state is WeatherFailure) {
          return const Center(
              child: Text('somesthing went wrong please try again   ⚠️  ⚠️'));
        } else {
          return const HomePageWeather();
        }
      }),
    );
  }
}
