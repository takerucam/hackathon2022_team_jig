import 'package:dio/dio.dart';
import 'package:hackathon2022_team_jig/data/sample_state.dart';
import 'package:retrofit/retrofit.dart';

part 'sample_provider.g.dart';

@RestApi(baseUrl: 'urlをここに入力')
abstract class SampleProvider {
  factory SampleProvider(Dio dio, {String baseUrl}) = _SampleProvider;
  @GET('/data')
  Future<SampleState> getBlogsData();
}
