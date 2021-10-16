class FetchException implements Exception {
  final _exceptionMessage;

  FetchException(this._exceptionMessage);

  @override
  String toString() {
    if (_exceptionMessage == null) return 'Exception';
    return 'Exception: $_exceptionMessage';
  }
}
