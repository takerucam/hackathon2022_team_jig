import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hackathon2022_team_jig/data/blog_result_data.dart';
import 'package:hackathon2022_team_jig/provider/microcms/client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dioProvider = Provider<Dio>(((ref) => Dio()));

final microcmsClientProvider = Provider<MicroCMSClient>((ref) {
  final _dio = ref.watch(dioProvider);
  return MicroCMSClient(_dio);
});

// final microcmsRepository = StateNotifierProvider<MicrocmsRepository, void>(
//   ((ref) => MicrocmsRepository(ref.read)),
// );

// class MicrocmsRepository extends StateNotifier<void> {
//   final Reader _reader;
//   MicrocmsRepository(this._reader) : super(null);

//   Future<List<BlogResultData>?> getBlogData() async {
//     final _dio = _reader(dioProvider);
//     await dotenv.load(fileName: '.env');
//     final res = await _reader(microcmsClientProvider)
//         .getBlogsData(dotenv.env['MICROCMS_KEY']!);
//     return res.contents;
//   }
// }

final blogResultDataProvider =
    FutureProvider<List<BlogResultData>>((ref) async {
  final _dio = ref.watch(dioProvider);
  final _client = ref.watch(microcmsClientProvider);
  await dotenv.load(fileName: '.env');
  final response = await _client.getBlogsData(dotenv.env['MICROCMS_KEY']!);
  return response.contents;
});
