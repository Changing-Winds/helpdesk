import 'package:dartz/dartz.dart';
import 'package:helpdesk/models/failure.dart';
import 'package:helpdesk/utils/extensions.dart';

import 'package:helpdesk/utils/failures.dart';
import 'package:helpdesk/utils/usecases/usecases.dart';
import 'package:yaml/yaml.dart';

// This class allows to have paramters set externally to the app
// in case I later want to provide this whole application as a
// White Label packaged tool and want to allow companies using it to customize it.
//
// These paramaters are different from the settings the final user
// may be choosing while using the app.
//
// A hosted URL can be used for Web Apps, or a file in the assets folder
// can be used instead.
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
