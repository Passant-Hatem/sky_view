import '../entities/weather.dart';

abstract class Repository {
  Future<Weather> getWeatherByCityName(String cityName);
}
