import 'package:helpdesk/models/failure.dart';

class NotFoundItemFailure extends Failure {
  NotFoundItemFailure(String cause) : super(cause: cause);
}

class MalformedDataFailure extends Failure {}
