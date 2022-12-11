enum Product {
  flatguide('Visite Flatguide'),
  saas('SaaS');

  final String name;

  const Product(this.name);
  @override
  String toString() => 'Product($name)';
}
