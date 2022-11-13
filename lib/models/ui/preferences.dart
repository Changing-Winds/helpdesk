enum NavigationBehavior {
  onePage,
  manyPages;

  bool get isOnePage => this == NavigationBehavior.onePage;
  bool get isManyPages => this == NavigationBehavior.manyPages;
}
