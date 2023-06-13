import '../../domain/entities/weather.dart';
import '../../domain/repository/repository.dart';
import '../data_source/remote_datasource.dart';

class DefaultRepository implements Repository {
  final BaseRemoteDataSource baseRemoteDataSource;

  DefaultRepository(this.baseRemoteDataSource);

  @override
  Future<Weather> getWeatherByCityName(String countryName) async {
    return (await baseRemoteDataSource.getWeatherByCountryName(countryName))!;
  }
}
