import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/weather.dart';

part 'weather_state.freezed.dart';
part 'weather_state.g.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = Initial;
  const factory WeatherState.loading() = Loading;
  const factory WeatherState.loaded(@WeatherConverter() Weather weather) = Loaded;
  const factory WeatherState.error(String message) = Error;

  factory WeatherState.fromJson(Map<String, dynamic> json) => _$WeatherStateFromJson(json);
}

class WeatherConverter implements JsonConverter<Weather, Map<String, dynamic>> {
  const WeatherConverter();

  @override
  Weather fromJson(Map<String, dynamic> json) {
    return Weather(json);
  }

  @override
  Map<String, dynamic> toJson(Weather weather) {
    return weather.toJson() ?? {};
  }
}
