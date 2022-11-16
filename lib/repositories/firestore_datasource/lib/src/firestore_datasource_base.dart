import 'dart:async';

import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:datasources/datasources.dart';
import 'package:firestore_datasource/firestore_datasource.dart';

abstract class FirestoreDatasource<T> extends RemoteDatasource<T> {
  FirestoreDatasource(this.collectionName);

  PrettierLogger logger = PrettierLogger(
      '${T.toString().length > 4 ? T.toString().toString().substring(0, 4) : T.toString()}A');

  T createfromDocument(DocumentSnapshot doc);

  final String collectionName;
  final FirebaseFirestore db = FirebaseFirestore.instance;

  CollectionReference get collectionRef => db.collection(collectionName);

  final _listController = StreamController<List<T>>.broadcast();
  StreamSubscription<QuerySnapshot<Object?>>? _listListener;

  final _documentController = StreamController<T>.broadcast();
  StreamSubscription<DocumentSnapshot<Map<String, dynamic>>>? _documentListener;

  Stream<T> realTimeDocumentSubscription(String id) async* {
    try {
      final docRef = db.collection(collectionName).doc(id);
      _documentListener = docRef.snapshots().listen((event) {
        if (event.exists) {
          T item = createfromDocument(event);

          _documentController.add(item);
        }
      });
    } catch (e) {
      logger.e('Failed to establish subscription: $e');
      throw UnableToEstablishSubscriptionException(e.toString());
    }
    yield* _documentController.stream;
  }

  Stream<List<T>> realTimeListSubscription(Query<Object?> query) async* {
    try {
      _listListener = query.snapshots().listen((event) {
        final List<T> items = [];
        for (var doc in event.docs) {
          T item = createfromDocument(doc);
          items.add(item);
        }
        _listController.add(items);
      });
    } catch (e) {
      logger.e('Failed to establish subscription: $e');
      throw UnableToEstablishSubscriptionException(e.toString());
    }
    yield* _listController.stream;
  }

  void cancelRealTimeDocumentSubscription() {
    _documentListener?.cancel();
  }

  void cancelRealTimeListSubscription() {
    _listListener?.cancel();
  }

  @override
  Future<void> delete(String id) async {
    try {
      final docRef = db.collection(collectionName).doc(id);
      await docRef.delete();
    } catch (e) {
      logger.e('Failed to delete $T id $id for reason: $e');
      throw UnableToDeleteException(e.toString());
    }
  }

  @override
  Future<T?> fetch(String id) async {
    try {
      final docRef = db.collection(collectionName).doc(id);
      final DocumentSnapshot doc = await docRef.get();
      T item = createfromDocument(doc);
      return item;
    } catch (e) {
      return null;
    }
  }

  // @override
  // Future<List<T>> find(query) async {
  //   logger.v('Finding $T items remotely');
  //   // String graphQLDocument = _doc.search();

  //   // try {
  //   //   var operation = Amplify.API.query(
  //   //       request: GraphQLRequest<String>(
  //   //           document: graphQLDocument, variables: query.variables));
  //   //   var serverResponse = await operation.response;

  //   //   if (serverResponse.data == null) {
  //   //     return [];
  //   //   }
  //   //   Map<String, dynamic> serverData = jsonDecode(serverResponse.data!);
  //   //   List<dynamic> rawItems = serverData[query.itemsArrayName]['items'];
  //   //   if (rawItems.isEmpty) {
  //   //     return [];
  //   //   }
  //   //   List<T> items = [];

  //   //   for (final json in rawItems) {
  //   //     T item = createFromJson(json);
  //   //     item.json = json;
  //   //     items.add(item);
  //   //   }

  //   //   return items;
  //   // } on ApiException catch (e) {
  //   //   throw UnableToFindGraphQLException(
  //   //       'Remote $T Repository: ⚠️ Amplify Search Error [$e].');
  //   // }
  // }

  @override
  Future<Either<Failure, T>> get(String id) async {
    logger.v('Getting $T item ID $id remotely');
    // String graphQLDocument = _doc.get();

    // try {
    //   var operation = Amplify.API.query(
    //       request:
    //           GraphQLRequest<String>(document: graphQLDocument, variables: {
    //     "id": id,
    //   }));
    //   var serverResponse = await operation.response;

    //   if (serverResponse.data == null) {
    //     return Left(NotFoundItemFailure('404'));
    //   }
    //   Map<String, dynamic> serverData = jsonDecode(serverResponse.data!);
    //   dynamic rawItem = serverData['get$T'];

    //   if (rawItem == null) {
    return Left(NotFoundItemFailure('Unknown Item'));
    //   }

    //   if (rawItem.isEmpty) {
    //     return Left(MalformedDataFailure());
    //   }

    //   T item = createFromJson(rawItem);
    //   item.json = rawItem;

    //   return Right(item);
    // } on ApiException catch (e) {
    //   return Left(NotFoundItemFailure(e.message));
    // }
  }

  Future<Either<Failure, Map<String, dynamic>>> exists(String id) async {
    logger.v('Checking if $T item ID exists $id remotely');
    // String graphQLDocument =
    //     "query Get$T(\$id: ID!){get$T(id: \$id){id, createdAt, updatedAt}}";

    // try {
    //   var operation = Amplify.API.query(
    //       request:
    //           GraphQLRequest<String>(document: graphQLDocument, variables: {
    //     "id": id,
    //   }));
    //   var serverResponse = await operation.response;

    //   if (serverResponse.data == null) {
    return Left(NotFoundItemFailure('404'));
    //   }

    //   Map<String, dynamic> serverData = jsonDecode(serverResponse.data!);
    //   dynamic rawItem = serverData['get$T'];

    //   print(rawItem);

    //   if (rawItem == null) {
    //     return Left(NotFoundItemFailure('404'));
    //   } else {
    //     return Right(rawItem);
    //   }
    // } on ApiException catch (e) {
    //   return Left(NotFoundItemFailure(e.message));
    // }
  }

  @override
  void insert(
    String id,
    Map<String, dynamic> item,
  ) async {
    item['updatedAt'] = item['createdAt'];
    try {
      db
          .collection(collectionName)
          .doc(id)
          .set(item)
          .onError((e, _) => print("Error writing document: $e"));

      // T? insertedItem = await fetch(id);
      // if (insertedItem == null) {
      //   throw UnableToSaveGraphQLException(
      //       '$T Repository: Remote $T: ⚠️ FireStore Insert Error [InsertedItem not found]');
      // }

      // return insertedItem;
    } catch (e) {
      throw UnableToSaveGraphQLException(
          '$T Repository: Remote $T: ⚠️ FireStore Insert Error [$e].');
    }
  }

  @override
  Future<List<T>> list(Query<Object?> query) async {
    logger.v('Listing $T items remotely');
    // String graphQLDocument = _doc.list();

    // RemoteQuery remoteQuery = query as RemoteQuery;

    try {
      QuerySnapshot<Object?> remoteItems = await query.get();
      if (remoteItems.docs.isEmpty) {
        return [];
      }

      List<T> items = [];

      for (final json in remoteItems.docs) {
        T item = createfromDocument(json);
        items.add(item);
      }
      return items;
    } catch (e) {
      throw UnableToFindGraphQLException(
          'Remote $T Repository: ⚠️ Amplify Search Error [$e].');
    }
  }

  @override
  Future<T?> update(
    String id,
    Map<String, dynamic> item,
  ) async {
    item['updatedAt'] = DateTime.now();
    try {
      db
          .collection(collectionName)
          .doc(id)
          .set(item, SetOptions(merge: true))
          .onError((e, _) => print("Error writing document: $e"));

      // T? insertedItem = await fetch(id);
      // if (insertedItem == null) {
      //   throw UnableToSaveGraphQLException(
      //       '$T Repository: Remote $T: ⚠️ FireStore Insert Error [InsertedItem not found]');
      // }

      // return insertedItem;
    } catch (e) {
      throw UnableToSaveGraphQLException(
          '$T Repository: Remote $T: ⚠️ FireStore Update Error [$e].');
    }

    // final DateTime existingCreatedAt =
    //     DateTime.parse(existingItem['createdAt'] as String);
    // final DateTime existingUpdatedAt =
    //     DateTime.parse(existingItem['updatedAt'] as String);
    // final DateTime itemCreatedAt = DateTime.parse(item['createdAt'] as String);
    // final DateTime itemUpdatedAt = DateTime.parse(item['updatedAt'] as String);

    // // We align the createdAt date in case the local item was created after the remote one
    // // Allows to have item with unique calculated IDs
    // if (existingCreatedAt.isBefore(itemCreatedAt)) {
    //   item['createdAt'] = existingItem['createdAt'];
    // }

    // // We don't update if the local data is older than the remote one
    // // We get that version instead
    // if (existingUpdatedAt.isAfter(itemUpdatedAt)) {
    //   Either<Failure, T> recentItem = await get(id);
    //   return recentItem.fold((l) => null, (r) => r);
    // }

    // try {
    //   String graphQLDocument = _doc.update();
    //   logger.v("⬆️ Updating up $T ID $id");

    //   var operation = Amplify.API.mutate(
    //       request: GraphQLRequest<String>(
    //           document: graphQLDocument, variables: {"input": item}));

    //   var response = await operation.response;
    //   if (response.data == null) {
    //     throw UnableToSaveGraphQLException(
    //         '$T Repository: Remote $T: ⚠️ Amplify Insert Error [].');
    //   }
    //   Map<String, dynamic> data = jsonDecode(response.data!);
    //   T updatedItem = createFromJson(data['update$T']);
    //   updatedItem.json = data;

    //   // if (data != null) {
    //   return updatedItem;
    // } on ApiException catch (e) {
    //   throw UnableToSaveGraphQLException(
    //       '$T Repository: Remote $T: ⚠️ Amplify Insert Error [$e].');
    // }
    return null;
  }

  // @override
  // Future<void> uploadFile(
  //   File file,
  //   String key,
  // ) async {
  //   // S3UploadFileOptions options =
  //   //     S3UploadFileOptions(accessLevel: StorageAccessLevel.guest);
  //   // try {
  //   //   await Amplify.Storage.uploadFile(key: key, local: file, options: options);
  //   // } on StorageException catch (e) {
  //   //   logger.e(e.message);
  //   //   throw UnableToUploadFileException(e.message);
  //   // }
  // }

  @override
  Future<T?> upsert(String id, dynamic item) async {
    // Either<Failure, Map<String, dynamic>> doesExist = await exists(id);

    // Future<T?> updatedItem =
    //     doesExist.fold((l) => insert(id, item), (r) => update(id, item, r));

    return update(id, item);
  }

  // @override
  // Stream<dynamic> subscribeToCreateEvents(String id, String targetName) {
  //   try {
  //     // return Amplify.API.subscribe(
  //     //   GraphQLRequest<String>(
  //     //       document: graphQLDocument, variables: {targetName: id}),
  //     //   onEstablished: () => logger.v('🔁 $T Subscription established'),
  //     // );
  //     return null;
  //   } catch (e) {
  //     logger.e('Failed to establish subscription: $e');
  //     throw UnableToEstablishSubscriptionException(e.message);
  //   }
  // }
}

class RemoteQuery {
  final Map<String, dynamic> variables;
  final String itemsArrayName;
  RemoteQuery(this.variables, this.itemsArrayName);
}

class UnableToFindGraphQLException implements Exception {
  String cause;
  UnableToFindGraphQLException(this.cause);
}

class UnableToSaveGraphQLException implements Exception {
  String cause;
  UnableToSaveGraphQLException(this.cause);
}
