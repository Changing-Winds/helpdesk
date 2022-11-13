class Section {
  Section({
    required this.name,
    required this.navigationIndex,
  });

  final String name;
  int navigationIndex;

  final List<dynamic> _children = [];

  void addChild(dynamic child) {
    if (_children.contains(child)) return;
    _children.add(child);
  }

  List<dynamic> get children => _children;
}
