import 'package:hackathon2022_team_jig/data/microcms_state.dart';
import 'package:hackathon2022_team_jig/repository/microcms_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final separationProvider =
    StateNotifierProvider<SeparationController, List<SeparationsState>>(
        (ref) => SeparationController(ref.read));

class SeparationController extends StateNotifier<List<SeparationsState>> {
  final Reader _reader;
  SeparationController(this._reader) : super([SeparationsState()]);

  Future<void> fetch() async {
    state = await _reader(microcmsRepository).getSeparationData();
  }
}
