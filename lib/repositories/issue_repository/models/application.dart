enum Application {
  adminApp(
      'Admin App', 'Admin/Larmina', '45413f4fa44645aa88e4681b0ece1425', false),
  agencyApp('Agency App', 'Application Agence',
      '9d35b96d2bc140f8be04d78bf249c573', false),
  agencySaaS('SaaS Agency App', 'Application Agence SaaS',
      'ec0b97dca3ae4d2c86e9d96b16a2c9e1', true),
  applicantApp('Applicant App', 'Application Candidat',
      '4034543ba8b3418abe7071688eadd6ed', true),
  applicantAppSaaS('Saas Applicant App', 'Application Candidat Saas',
      '4034543ba8b3418abe7071688eadd9e1', false),
  calendly('Calendly', 'Calendly', 'a072852730c64c8394d0a2d7dfb45d45', false),
  concordNow(
      'Concord Now', 'Concord Now', '90b5e2278c754926a5850648ff46c888', false),
  email('Email', 'Email', '9373d25412ad49f49e76a60bf02ddaa9', false),
  flatGuideApp('Flatguide Mobiel App', 'Application Mobile FlatGuide',
      'c90e959f40264e73b351781212bcc703', false),
  flatGuideProspectionForm(
      'Flatguide Prospection Form',
      'Formulation Prospect FlatGuide',
      '1832f2aec8564915983581c1d72ae4eb',
      false),
  flatGuideWebApp('Flatguide Web App', 'Site FlatGuide',
      '7769d03bbcf84da4b6de20510a0ef5af', false),
  googleDrive('Google Drive', 'Google Drive',
      'fc7980c1a74c45efb7269a34a2b1a36f', false),
  hubSpot('HubSpot', 'HubSpot', 'f18a017f3dfa4c028aeed2bd268177a5', false),
  intercom('Intercom', 'Intercom', '9479272b733c417a9158c324706e5610', false),
  metabase('Metabase', 'Metabase', 'e396630284834cf6a1a4bdad8159e2a5', false),
  qonto('Qonto', 'Qonto', '87aecfce8970411f9656462272143730', false),
  stripe('Stripe', 'Stripe', '7e297564c1f04042b225be75115b077b', false),
  system('Stripe', 'Stripe', 'a442820512ae45018533137327ea246b', false),
  upflow('Upflow', 'Upflow', '9f5cf38818be4ca4b164fb9e87447ed7', false),
  website('Flatsy.fr Website', 'Site Web Flatsy.fr',
      '6e090281586f4d628bf6178455f558a2', false);

  final String name;
  final String nameFr;
  final String id;
  final bool isSaasOnly;

  const Application(this.name, this.nameFr, this.id, this.isSaasOnly);
  @override
  String toString() =>
      'Application(Name: $name, ID: $id, isSaasOnly: $isSaasOnly )';
}
