import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../Constants.dart';
import '../../cubit/weather_cubit.dart';
import 'backgroungcolor_container.dart';
import 'weatherapp_body.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WeatherCubit, WeatherState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state is WeatherLoadingState) {
          return onLoading();
        } else if (state is WeatherSuccessState) {
          return onSuccess(
              context,
              WeatherCubit.get(context).weatherModel!.temp_c.round().toString(),
              WeatherCubit.get(context).weatherModel!.condition,
              WeatherCubit.get(context).weatherModel!.last_updated.toString(),
              WeatherCubit.get(context).weatherModel!.code);
        } else
          return Center(
            child: Text("failed"),
          );
      },
    );
  }

  Widget onLoading() => Center(
        child: CircularProgressIndicator(),
      );

  Widget onSuccess(BuildContext context, String Temp, String condition,
      String date, int code) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            const BackgroundcolorContainer(
                align1: 3,
                align2: -0.3,
                width: 300,
                color: Colors.deepPurple,
                shape: BoxShape.circle),
            const BackgroundcolorContainer(
                align1: -3,
                align2: -0.3,
                width: 300,
                color: Colors.deepPurple,
                shape: BoxShape.circle),
            const BackgroundcolorContainer(
                align1: 0,
                align2: -1.2,
                width: 600,
                color: Color(0xfffea240),
                shape: BoxShape.rectangle),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
              child: Container(
                decoration: const BoxDecoration(color: Colors.transparent),
              ),
            ),
            WeatherappBody(Temp: Temp,condition: condition,
          date: date,code: code,),
          ],
        ),
      ),
    );
  }
}

