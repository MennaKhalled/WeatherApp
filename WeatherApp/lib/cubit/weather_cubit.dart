import 'package:api_task/Constants.dart';
import 'package:api_task/data/model/weather_model.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:meta/meta.dart';

import '../data/services/dio_helper.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherInitialState());

  static WeatherCubit get(context)=>BlocProvider.of(context);


  // final Position position;
  WeatherModel? weatherModel;

  Future<void> getWeather() async {
    emit(WeatherLoadingState());
    await DioHelper.getData(endPoints: endPointes, queryParameters: {
      'key': '89ebb6af2bb249f8b23172254243004',
      'q': 'Cairo',
      'aqi': 'no'
    }).then((value) {
      weatherModel=WeatherModel.fromJson(value.data);
      print(value.data);
      emit(WeatherSuccessState());
    }).catchError((error) {
      if (error is DioError) {
        emit(WeatherFailureState(message: error.response!.data['message']));
      } else {
        emit(WeatherFailureState(message: error.toString()));
      }
    });
  }
}
