import '../entities/weather.dart';
import '../repository/repository.dart';

class GetWeatherByCountryName {
  final Repository repository;

  GetWeatherByCountryName(this.repository);

  Future<Weather> execute(String cityName) async {
    return await repository.getWeatherByCityName(cityName);
  }
}
