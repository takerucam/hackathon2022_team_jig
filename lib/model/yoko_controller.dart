import 'package:hackathon2022_team_jig/data/microcms_state.dart';
import 'package:hackathon2022_team_jig/repository/microcms_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final yoloProvider = StateNotifierProvider<YoloController, List<YoloState>>(
    (ref) => YoloController(ref.read));

class YoloController extends StateNotifier<List<YoloState>> {
  final Reader _reader;
  YoloController(this._reader) : super([YoloState()]);

  Future<void> fetch() async {
    state = await _reader(microcmsRepository).getYoloData();
  }
}
