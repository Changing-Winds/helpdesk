import 'package:helpdesk/models/failure.dart';

class UnsupportedOpenApiVersionFailure extends Failure {}

class MalformedYamlFileFailure extends Failure {}

class MissingYamlFileFailure extends Failure {}

class MissingApiConfigYamlFileFailure extends Failure {}

class MissingRefFailure extends Failure {
  MissingRefFailure({super.cause});
}
