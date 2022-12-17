import 'package:hackathon2022_team_jig/data/microcms_state.dart';
import 'package:hackathon2022_team_jig/data/toast_state.dart';
import 'package:hackathon2022_team_jig/model/separation_controller.dart';
import 'package:hackathon2022_team_jig/model/yoko_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final toastProvider = StateNotifierProvider<ToastController, List<ToastState>>(
    (ref) => ToastController(ref.read));

class ToastController extends StateNotifier<List<ToastState>> {
  final Reader _reader;
  ToastController(this._reader) : super([ToastState()]);

  void updateToastMessage(String msg) {
    final yoloState = _reader(yoloProvider);
    final separationState = _reader(separationProvider);

    // 品名の候補取得
    final List<String> yoloCandidates =
        yoloState.firstWhere((yolo) => yolo.yolo == msg).candidates;

    Set<SeparationsState> toastList = {};
    for (var yoloCandidate in yoloCandidates) {
      final List<SeparationsState> a = separationState
          .where((v) => v.candidate.contains(yoloCandidate))
          .toList();
      toastList.addAll(a);
    }
    toastList.map((toast) {});
  }
}
