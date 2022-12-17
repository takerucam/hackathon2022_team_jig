import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hackathon2022_team_jig/data/microcms_state.dart';
import 'package:hackathon2022_team_jig/provider/microcms/client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dioProvider = Provider<Dio>(((ref) => Dio()));

final microcmsClientProvider = Provider<MicroCMSClient>((ref) {
  final _dio = ref.watch(dioProvider);
  return MicroCMSClient(_dio);
});

final microcmsRepository = Provider<MicrocmsRepository>(
  ((ref) => MicrocmsRepository(ref.read)),
);

class MicrocmsRepository {
  final Reader _reader;
  MicrocmsRepository(this._reader);

  // 分別データ取得
  Future<List<SeparationsState>> getSeparationData() async {
    final res = await _reader(microcmsClientProvider)
        .getSeparationData(dotenv.env['MICROCMS_KEY']!);
    return res.contents;
  }

  // yoloと品名のデータセットを取得
  Future<List<YoloState>> getYoloData() async {
    final res = await _reader(microcmsClientProvider)
        .getYoloData(dotenv.env['MICROCMS_KEY']!);
    return res.contents;
  }
}
