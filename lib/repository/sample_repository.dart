import 'package:hackathon2022_team_jig/data/sample_state.dart';
import 'package:hackathon2022_team_jig/provider/dio_provider.dart';
import 'package:hackathon2022_team_jig/provider/sample_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final sampleClientProvider = Provider<SampleProvider>((ref) {
  final _dio = ref.watch(dioProvider);
  return SampleProvider(_dio);
});

final sampleRepository = Provider<SampleRepository>(
  ((ref) => SampleRepository(ref.read)),
);

class SampleRepository {
  final Reader _reader;
  SampleRepository(this._reader);

  Future<SampleState> getApiData() async {
    return await _reader(sampleClientProvider).getBlogsData();
  }
}
