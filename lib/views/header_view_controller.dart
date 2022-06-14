class HeaderViewController {
  static final HeaderViewController instance = HeaderViewController._internal();
  late bool _displayExplorer;
  late bool _displaySettings;

  HeaderViewController._internal() {
    _displayExplorer = true;
    _displaySettings = true;
  }

  get displayExplorer => _displayExplorer;
  get displaySettings => _displaySettings;

  void toggleDisplayExplorer() => _displayExplorer = !_displayExplorer;
  void toggleDisplaySettings() => _displaySettings = !_displaySettings;
}