import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:helpdesk/models/models.dart';
import 'package:helpdesk/utils/prettier_logger/prettier_logger.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:yaml/yaml.dart';
import 'package:http/http.dart' as http;

class LoadYamlDocUseCase extends UseCase<YamlMap, LoadYamlDocParams> {
  LoadYamlDocUseCase();

  PrettierLogger logger = PrettierLogger('loymU');

  @override
  Future<Either<Failure, YamlMap>> call(LoadYamlDocParams params) async {
    logger.i('Loading Yaml File \'${params.url}\'...');

    dynamic yamlData;

    if (kIsWeb) {
      try {
        final http.Response response = await http.get(Uri.parse(params.url));

        if (response.statusCode != 200) {
          logger.e('Error loading file \'${params.url}\': File is missing.');
          return Left(MissingYamlFileFailure());
        }

        try {
          yamlData = loadYaml(utf8.decode(response.body.runes.toList()));
        } catch (e) {
          logger.e('Error parsing file \'${params.url}\'');
          logger.e(e);
          return Left(MalformedYamlFileFailure());
        }
      } catch (e) {
        logger.e('Error loading file \'${params.url}\', file is missing.');
        logger.e(e);
        return Left(MissingYamlFileFailure());
      }
    } else {
      String data = await rootBundle.loadString('assets/apis/${params.url}');

      try {
        yamlData = loadYaml(data);
      } catch (e) {
        logger.e('Error parsing file \'$params.url\'');
        logger.e(e);
        return Left(MalformedYamlFileFailure());
      }
    }
    return Right(yamlData);
  }
}

class LoadYamlDocParams {
  const LoadYamlDocParams({
    required this.url,
  });
  final String url;
}
