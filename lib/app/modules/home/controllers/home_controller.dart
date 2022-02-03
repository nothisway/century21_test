import 'package:century21test/app/data/model/pagintaion_filter.dart';
import 'package:century21test/app/data/model/pokedex_response.dart';
import 'package:century21test/app/data/model/state_status.dart';
import 'package:century21test/app/data/repository/api_repository.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class HomeController extends GetxController {
  bool get lastPage => _lastPage.value;

  final categories = Get.arguments;
  final keyword = ''.obs;
  final _lastPage = false.obs;
  final _paginationFilter = PaginationFilter().obs;
  final _pokedexResponseResults = <PokedexResponseResults?>[].obs;
  final _stateStatus = ''.obs;
  final PagingController<int, PokedexResponseResults?> pagingController =
      PagingController(firstPageKey: 0);

  int get limit => _paginationFilter.value.limit?.toInt() ?? 0;
  int get _page => _paginationFilter.value.page?.toInt() ?? 0;

  List<PokedexResponseResults?> get pokedexResponseResults =>
      _pokedexResponseResults.toList();

  set pokedexResponseResults(value) => _pokedexResponseResults.toList();

  static const _pageSize = 8;

  String get stateStatus => _stateStatus.value;

  @override
  onInit() {
    _pokedexResponseResults.clear();
    pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.onInit();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      PokedexResponse response = await ApiRepository().getPokeDex(pageKey);
      List<PokedexResponseResults?> _tempPokedexResponseResults =
          response.results ?? [];
      final isLastPage = _tempPokedexResponseResults.length < _pageSize;
      if (isLastPage) {
        pagingController.appendLastPage(_tempPokedexResponseResults);
      } else {
        final nextPageKey = pageKey + _tempPokedexResponseResults.length;
        pagingController.appendPage(_tempPokedexResponseResults, nextPageKey);
      }
      _stateStatus.value = StateStatus.success;
    } catch (e) {
      pagingController.error = e;
      _stateStatus.value = StateStatus.error;
    }
  }

  void _changePaginationFilter(int page, int limit) {
    _paginationFilter.update((val) {
      val?.page = page;
      val?.limit = limit;
    });
  }

  void loadNextPage() => _changePaginationFilter(_page + 8, limit);
}
