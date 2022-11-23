abstract class LocalDatasource<T> {
  LocalDatasource(this.box);

  Future<void> delete(String id);

  Future<void> deleteAll();

  bool exists(String id);

  Future<List<T>> find(query);

  T get(String id);

  Future<List<T>> getAll();

  Future<void> init();

  Future<void> insert(String id, T item);

  Future<List<T>> list(query);

  Future<void> update(String id, T item);

  Future<T> upsert(String id, T item);

  final dynamic box;
}
