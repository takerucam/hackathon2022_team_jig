import 'package:hackathon2022_team_jig/data/sample_state.dart';
import 'package:hackathon2022_team_jig/repository/sample_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final sampleProvider =
    StateNotifierProvider<SampleController, AsyncValue<SampleState>>(
        (ref) => SampleController(ref.read));

class SampleController extends StateNotifier<AsyncValue<SampleState>> {
  final Reader _reader;
  SampleController(this._reader) : super(const AsyncLoading());

  void add() {
    // 処理
  }

  Future<void> getApiData() async {
    try {
      final res = await _reader(sampleRepository).getApiData();
      state = AsyncData(res);
    } catch (error, _) {
      state = AsyncError(error);
    }
  }
}
