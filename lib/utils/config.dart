import 'package:dartz/dartz.dart';
import 'package:helpdesk/models/failure.dart';
import 'package:helpdesk/utils/extensions.dart';

import 'package:helpdesk/utils/failures.dart';
import 'package:helpdesk/utils/usecases/usecases.dart';
import 'package:yaml/yaml.dart';

class Config {
  late YamlMap config;

  Future<Either<Failure, bool>> init() async {
    try {
      // Load the main document
      LoadYamlDocUseCase loadYamlDoc = LoadYamlDocUseCase();
      final result =
          await loadYamlDoc(const LoadYamlDocParams(url: 'assets/config.yaml'));

      if (result.isLeft()) {
        return Left(result.asLeft());
      }
      config = result.asRight();

      return const Right(true);
    } catch (e) {
      return Left(MissingConfigYamlFileFailure());
    }
  }

  String get helpdeskName {
    return config['helpdesk-name'] ?? 'Help Desk';
  }

  String? get helpdeskLogo {
    return config['helpdesk-logo'];
  }

  bool get centerHelpdeskName {
    return config['center-helpdesk-name'] ?? false;
  }

  String get apiSpecsLocation {
    return config['api-specs-location'];
  }

  bool get allowDownloads {
    return config['allow-downloads'] ?? false;
  }

  bool get requireSignIn {
    return config['require-sign-in'] ?? true;
  }

  String? get googleClientID {
    return config['google-clientId'];
  }

  String? get googleHostedDomain {
    return config['google-hosted-domain'];
  }
}
