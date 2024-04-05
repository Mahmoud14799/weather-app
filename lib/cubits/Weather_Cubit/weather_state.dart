import 'package:weather_app/models/weather_model.dart';

abstract class WeatherState {}

class Weatherinitial extends WeatherState {}

class WeatherLoding extends WeatherState {}

class WeatherSuccess extends WeatherState {
  WeatherModel weatherModel;

  WeatherSuccess({required this.weatherModel});
}

class WeatherFailure extends WeatherState {}

class BackToSearch extends WeatherState {
  WeatherModel weatherModel;
  BackToSearch({
    required this.weatherModel,
  });
}
