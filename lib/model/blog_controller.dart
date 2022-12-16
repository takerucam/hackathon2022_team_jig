import 'package:hackathon2022_team_jig/data/blog_result_data.dart';
import 'package:hackathon2022_team_jig/repository/microcms_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final blogProvider =
    StateNotifierProvider<BlogController, AsyncValue<List<BlogResultData>>>(
        (ref) => BlogController(ref.read));

class BlogController extends StateNotifier<AsyncValue<List<BlogResultData>>> {
  final Reader _reader;
  BlogController(this._reader) : super(const AsyncLoading());

  Future<void> fetch() async {
    try {
      state = const AsyncLoading();
      final res = await _reader(microcmsRepository).getBlogData();
      if (res != null) state = AsyncData(res);
    } catch (e) {
      state = AsyncError(e);
    }
  }
}
