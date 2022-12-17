enum Device {
  windowsDekstop(
    'Windows Desktop',
    'Ordinateur Windows',
    'windowsDekstop',
    false,
  ),
  macOSDekstop(
    'MacOS Desktop',
    'Ordinateur MacOS',
    'macOSDekstop',
    false,
  ),
  linuxDekstop(
    'Linux Desktop',
    'Ordinateur Linux',
    'linuxDekstop',
    false,
  ),
  iOSMobile(
    'iPhone',
    'iPhone',
    'iOSMobile',
    true,
  ),
  iOSTablet(
    'iPad',
    'iPad',
    'iOSTablet',
    true,
  ),
  androidMobile(
    'Android Mobile',
    'Mobile Android',
    'androidMobile',
    true,
  ),
  androidTablet(
    'Android Tablet',
    'Tablette Android',
    'androidTablet',
    true,
  );

  final String id;
  final String name;
  final String nameFr;
  final bool isMobile;

  const Device(this.name, this.nameFr, this.id, this.isMobile);
  @override
  String toString() => 'Device($id, Name: $name, NameFr: $nameFr)';
}
