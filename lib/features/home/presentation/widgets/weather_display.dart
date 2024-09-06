import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petsitting/features/home/presentation/bloc/weather/weather_cubit.dart';
import 'package:petsitting/features/home/presentation/bloc/weather/weather_state.dart';
import 'package:weather/weather.dart';
import 'package:weather_animation/weather_animation.dart';

class WeatherDisplay extends StatelessWidget {
  final double latitude;
  final double longitude;

  const WeatherDisplay({
    super.key,
    required this.latitude,
    required this.longitude,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherCubit(
        WeatherFactory(
          "b9689fb3b5e45f981cfd33f42036ba24",
          language: Language.FRENCH,
        ),
      )..fetchWeather(latitude, longitude),
      child: BlocBuilder<WeatherCubit, WeatherState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (weather) => _buildWeatherAnimation(weather),
            error: (message) => Center(child: Text('Error: $message')),
          );
        },
      ),
    );
  }

  Widget _buildWeatherAnimation(Weather weather) {
    final scene = _getSceneFromWeather(weather);
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          width: double.infinity,
          height: 120,
          child: WrapperScene.weather(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            scene: scene,
          ),
        ),
        Positioned(
          bottom: 8,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${weather.temperature?.celsius?.toStringAsFixed(1)}°C - ${weather.weatherDescription?.capitalize()}',
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }

  WeatherScene _getSceneFromWeather(Weather weather) {
    final condition = weather.weatherMain?.toLowerCase() ?? '';
    final bool isDay = (weather.date?.hour ?? 0) >= 6 && (weather.date?.hour ?? 0) < 18;

    switch (condition) {
      case 'clear':
        return isDay ? WeatherScene.scorchingSun : WeatherScene.sunset;
      case 'clouds':
        return WeatherScene.rainyOvercast;
      case 'rain':
        return WeatherScene.rainyOvercast;
      case 'snow':
        return WeatherScene.snowfall;
      case 'thunderstorm':
        return WeatherScene.stormy;
      default:
        return WeatherScene.weatherEvery;
    }
  }
}
