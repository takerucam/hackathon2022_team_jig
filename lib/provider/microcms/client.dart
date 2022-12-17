import 'package:dio/dio.dart';
import 'package:hackathon2022_team_jig/data/microcms_state.dart';
import 'package:retrofit/retrofit.dart';

part 'client.g.dart';

@RestApi(baseUrl: 'https://teamjig.microcms.io/api/v1')
abstract class MicroCMSClient {
  factory MicroCMSClient(Dio dio, {String baseUrl}) = _MicroCMSClient;
  @GET('/separations')
  Future<MicrocmsSeparationState> getSeparationData(
    @Header('X-MICROCMS-API-KEY') String apiKey,
    @Query('limit') int limit,
  );
  @GET('/yolo')
  Future<MicrocmsYoloState> getYoloData(
    @Header('X-MICROCMS-API-KEY') String apiKey,
    @Query('limit') int limit,
  );
}
