import 'package:dio/dio.dart';
import 'package:hackathon2022_team_jig/data/blog_result_data.dart';
import 'package:retrofit/retrofit.dart';

part 'client.g.dart';

@RestApi(baseUrl: 'https://teamjig.microcms.io/api/v1')
abstract class MicroCMSClient {
  factory MicroCMSClient(Dio dio, {String baseUrl}) = _MicroCMSClient;
  @GET('/blogs')
  Future<BlogResultDataResponse> getBlogsData(
    @Header('X-MICROCMS-API-KEY') String apiKey,
  );
}
