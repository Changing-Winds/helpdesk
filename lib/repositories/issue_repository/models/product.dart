enum Product {
  flatguide('Flatguide Visits', 'Visite Flatguide'),
  saas('SaaS', 'SaaS'),
  all('All Products', 'Tous les produits');

  final String name;
  final String nameFr;

  const Product(this.name, this.nameFr);
  @override
  String toString() => 'Product($name, NameFr: $nameFr)';
}
