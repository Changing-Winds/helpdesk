class NotFoundItemException implements Exception {
  NotFoundItemException(this.cause);
  String cause;
}

class UnableToSaveException implements Exception {
  UnableToSaveException(this.cause);
  String cause;
}

class UnableToDeleteException implements Exception {
  UnableToDeleteException(this.cause);
  String cause;
}

class UnableToEstablishSubscriptionException implements Exception {
  UnableToEstablishSubscriptionException(this.cause);
  String cause;
}
