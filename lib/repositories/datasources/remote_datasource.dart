import 'package:dartz/dartz.dart';
import 'package:helpdesk/models/failure.dart';

typedef SubscriptionOnDataCallback = void Function(dynamic);

abstract class RemoteDatasource<T> {
  Future<void> delete(String id);

  // Future<List<T>> find(query);

  Future<T?> fetch(String id);

  Future<Either<Failure, T>> get(String id);

  void insert(String id, Map<String, dynamic> item);

  Future<List<T>> list(covariant query);

  // dynamic subscribeToCreateEvents(String id, String targetName);

  Future<T?> update(
    String id,
    Map<String, dynamic> item,
  );

  Future<T?> upsert(String id, Map<String, dynamic> item);

  // Future<void> uploadFile(File file, String key);
}
