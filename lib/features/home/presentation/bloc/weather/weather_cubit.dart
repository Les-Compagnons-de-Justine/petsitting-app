import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:petsitting/features/home/presentation/bloc/weather/weather_state.dart';
import 'package:weather/weather.dart';

class WeatherCubit extends HydratedCubit<WeatherState> {
  final WeatherFactory _weatherFactory;

  WeatherCubit(this._weatherFactory) : super(const WeatherState.initial());

  Future<void> fetchWeather(double lat, double lon) async {
    emit(const WeatherState.loading());
    try {
      final weather = await _weatherFactory.currentWeatherByLocation(lat, lon);
      emit(WeatherState.loaded(weather));
    } catch (e) {
      emit(WeatherState.error(e.toString()));
    }
  }

  @override
  WeatherState? fromJson(Map<String, dynamic> json) {
    return WeatherState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(WeatherState state) {
    return state.toJson();
  }
}
