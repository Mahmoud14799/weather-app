import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/Weather_Cubit/weather_state.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherService weatherService;
  WeatherModel? weatherModelnew;
  WeatherModel? weatherModel;
  String? cityName;
  List<String>? cityNameList = [];

  WeatherCubit(this.weatherService) : super(Weatherinitial());
  void getWeather({required String cityName}) async {
    emit(WeatherLoding());
    if (!cityNameList!.contains(cityName)) {
    cityNameList!.add(cityName);
    
  }

    try {
      weatherModel = await weatherService.getWeather(cityName: cityName);

      emit(WeatherSuccess(weatherModel: weatherModel!));
      
    } catch (e) {
      emit(WeatherFailure());
    }
  }

//  void addCityToList(
//       {required List<String> cityNameList, required String cityName}) {
//     for (int i = 0; i < cityNameList.length; i++) {
//       if (cityNameList[i] != cityName) {
        
//         return cityNameList.add(cityName);
//       }
//     }
//   }
}



//   void getWeatherinSearch({
//     required List<String> cityNameList,
//     required String cityName,
//   }) async {
//     emit(WeatherLoding());

//     for (var i = 0; i < cityNameList.length; i++) {
//       if (cityNameList[i] == cityName) {
//         try {
//           weatherModel =
//               await weatherService.getWeather(cityName: cityNameList[i]);
//           emit(BackToSearch(weatherModel: weatherModelnew!));
//         } catch (e) {
//           emit(WeatherFailure());
//         }
//       }
//     }
//   }
// }
