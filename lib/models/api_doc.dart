import 'package:helpdesk/utils/extensions.dart';

class ApiDoc {
  ApiDoc({
    required this.name,
    required this.version,
    required this.url,
    this.description,
    this.isPrivate = true,
  }) : slug = '${name.snakeCase()}_$version';

  final String name;
  final String slug;
  final String version;
  final String url;
  final String? description;
  final bool isPrivate;

  @override
  String toString() {
    return 'ApiDoc(name: $name, version: $version, slug: $slug, url: $url)';
  }
}
