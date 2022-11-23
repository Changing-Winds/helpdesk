import 'package:helpdesk/repositories/datasources/datasources.dart';
import 'package:helpdesk/utils/prettier_logger/prettier_logger.dart';

abstract class GitLabDatasource<T> extends RemoteDatasource<T> {
  GitLabDatasource(this.collectionName);

  final String collectionName;

  PrettierLogger logger = PrettierLogger(
      '${T.toString().length > 4 ? T.toString().toString().substring(0, 4) : T.toString()}A');
}
