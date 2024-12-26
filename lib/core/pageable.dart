class Pageable {
  int _pageSize = 10;
  int _page = 1;

  Pageable({required int pageSize, required int page}) {
    _page = page;
    _pageSize = pageSize;
  }

  int get page => _page;

  int get pageSize => _pageSize;

  int get offSet {
    return _page * _pageSize;
  }
}

class InvalidPageException implements Exception {
  final String message;
  InvalidPageException([this.message = 'Page should be great than 1 ']);

  @override
  String toString() {
    return this.message;
  }
}
