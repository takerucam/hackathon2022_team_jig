import 'package:hackathon2022_team_jig/data/microcms_state.dart';
import 'package:hackathon2022_team_jig/data/toast_state.dart';
import 'package:hackathon2022_team_jig/model/separation_controller.dart';
import 'package:hackathon2022_team_jig/model/yoko_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final toastProvider = StateNotifierProvider<ToastController, List<ToastState>>(
    (ref) => ToastController(ref.read));

class ToastController extends StateNotifier<List<ToastState>> {
  final Reader _reader;
  ToastController(this._reader) : super([]);

  void resetToastState() {
    state = [];
  }

  void updateToastMessage(String msg) {
    final yoloState = _reader(yoloProvider);
    final separationState = _reader(separationProvider);

    // 品名の候補取得
    final YoloState? yolo = yoloState.firstWhere(
      (element) => element.yolo == msg,
      orElse: () => YoloState(),
    );

    final List<String> yoloCandidates = yolo!.candidates;

    Set<SeparationsState> toastList = {};
    for (var yoloCandidate in yoloCandidates) {
      final List<SeparationsState> a = separationState
          .where((v) => v.candidates.any((v) => v == yoloCandidate))
          .toList();
      toastList.addAll(a);
    }

    toastList.remove(SeparationsState());
    toastList.toList().asMap().forEach((i, toast) {
      state = [
        ...state,
        ToastState(
          icon: toast.icon?.url,
          item: yoloCandidates[i],
          separation: toast.name,
        ),
      ];
    });
  }
}
