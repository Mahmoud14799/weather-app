import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/Weather_Cubit/weather_cubit.dart';
import 'package:weather_app/widget/ListCardList.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final cityNameList = BlocProvider.of<WeatherCubit>(context).cityNameList;

    return Scaffold(
      appBar: AppBar(
       
        backgroundColor: Color.fromARGB(255, 33, 32, 114),
        title: const Text('History Search',),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      body: ListView.separated(
        itemCount: cityNameList!.length,
        itemBuilder: ((context, index) {
          final cityName = cityNameList[index];
          return ListHistory(
              text: BlocProvider.of<WeatherCubit>(context).cityNameList![index],
              onTap: () {
              if (cityNameList[index] == cityName) {
                 BlocProvider.of<WeatherCubit>(context)
                  .getWeather(cityName: cityName);
              BlocProvider.of<WeatherCubit>(context).cityName = cityName ;
              
                 Navigator.of(context).pushNamed('home_page',);
              }
              
              });
        }),
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            color: Colors.grey[400],
            thickness: 2,
          );
        },
      ),
    );
  }
}
