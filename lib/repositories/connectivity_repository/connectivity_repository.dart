import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:helpdesk/utils/prettier_logger/prettier_logger.dart';

class ConnectivityRepository {
  ConnectivityRepository() {
    _subscription =
        _connectivity.onConnectivityChanged.listen((ConnectivityResult result) {
      logger.v('📶 Connectivity Status changed to: $result');
      _controller.add(result);
    });
  }

  final _controller = StreamController<ConnectivityResult>.broadcast();
  final PrettierLogger logger = PrettierLogger('ConnR');
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _subscription;
  Future<ConnectivityResult> currentStatus() async =>
      await _connectivity.checkConnectivity();

  Stream<ConnectivityResult> get status async* {
    logger.v('📶 Checking Connectivity Status...');

    ConnectivityResult connectivityStatus =
        await _connectivity.checkConnectivity();

    logger.v('📶 Connectivity Status: $connectivityStatus');
    yield connectivityStatus;
    yield* _controller.stream;
  }

  void dispose() {
    _controller.close();
    _subscription.cancel();
  }
}
