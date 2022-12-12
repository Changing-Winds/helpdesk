enum Actor {
  agencyCollaborator('Agency Collaborator', 'Collaboratoeur Agence',
      '1f0f9050687a4c69b82c2ad25bea34e6'),
  applicant('Applicant', 'Candidat', 'b3fc61ee3d294c8a983a7cce5a5ede16'),
  cLevel('C-Level', 'CoDir', '2cd428e9ee88421d9582aa74ce7bd7e8'),
  csmStaff('CSM Staff', 'CSM', '9b04a1191a2e47a6bb0e00e76275e136'),
  flatGuide('Flatguide', 'Flatguide', 'd466759d44bf4efe995c7eeb0f3a29ca'),
  flatGuideProspect('Flatguide Prospect', 'Prospect Flatguide',
      '7c72198b2bd849878f88ecd5e86d56f3'),
  marketingStaff(
      'Marketing Staff', 'Marketing', 'd75e47f013e74408bd16d448834c6c94'),
  opsStaff('Ops Staff', 'Ops', '1c01b58121fd4b23901c1a4bfa539ffe'),
  salesStaff('Sales Staff', 'Sales', 'cea12272506b498da5c145d4dd10cb0a'),
  system('System', 'System', 'e0b952212bc04e8f916b85e089411309'),
  user('User', 'Utilisateur', '5770846e6a374d5e8853386aa7db9e58'),
  visitor('Visitor', 'Visiteur', '2254cb84a9d745228640bf728ec81474');

  final String name;
  final String nameFr;
  final String id;

  const Actor(this.name, this.nameFr, this.id);
  @override
  String toString() => 'Actor(Name: $name, ID: $id )';
}
