enum PlatformEntity {
  application('Application', 'Candidature', '4a6ff18cc4cc42bb8e4ab95157233487'),
  availabilities(
      'Availabilities', 'Disponibilité', '70eab40324734a48b7832ca5900e17cf'),
  booking('Booking', 'Visite', '3f5ab6da13eb42d192d5add126bb0e92'),
  customer('Customer', 'Client', '893f3f582d434a19a7f602b1ea65b4d1'),
  event('Event', 'Evénement', '09fc6555a8ac4b17870e6f3a953c22e4'),
  faq('FAQ', 'FAQ', '9f8f5daee9f74314beecf0f90e07d5e9'),
  flatguide('Flatguide', 'Flatguide', 'a8512bde6a2b4ee7a7cdeea35bad7265'),
  invoice('Invoice', 'Facture', 'a7d4fb846aba45ffb866ab772e203553'),
  kpi('KPI', 'KPI', '1d2287150d384549be9999ce76db3ed7'),
  message('Message', 'Message', '0edd68283b7a4c60ba19148390e259f2'),
  notification(
      'Notification', 'Notification', '76df309b876a41379117b1f116f84514'),
  property('Property', 'Bien', '4fb0aa4c6b594276818e3ae3e1e1cf26'),
  serviceFee('Service-Fee', 'Forfait', 'cf637d33bc9a49a0a749ae5a6f805e0e'),
  staffing('Staffing', 'Staffing', '9645263e62a140c1b494841f745b44a9'),
  user('User', 'Utilisateur', 'bf889e3166d74034baf629bfcc86f6f6');

  final String name;
  final String nameFr;
  final String id;

  const PlatformEntity(this.name, this.nameFr, this.id);
  @override
  String toString() => 'PlatformEntity(Name: $name, NameFR: $nameFr, ID: $id )';
}
