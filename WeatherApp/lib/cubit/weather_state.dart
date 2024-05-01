part of 'weather_cubit.dart';

@immutable
sealed class WeatherState {}

final class WeatherInitialState extends WeatherState {}
final class WeatherLoadingState extends WeatherState {}
final class WeatherFailureState extends WeatherState {
  final String ?message;

  WeatherFailureState({this.message});
}
final class WeatherSuccessState extends WeatherState {}
