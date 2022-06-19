import 'dart:async';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';
part 'connectivity_state.dart';

class ConnectivityCubit extends Cubit<ConnectivityState> {
  ConnectivityCubit() : super(ConnectivityInitial());

  final _connectivity = Connectivity();
  bool? hasConnection;

  Future<void> initializeConnectivity() async {
    _connectivity.onConnectivityChanged.listen(_connectionChange);
    checkConnection(await _connectivity.checkConnectivity());
  }

  void _connectionChange(ConnectivityResult result) {
    checkConnection(result);
  }

  Future<bool?> checkConnection(ConnectivityResult result) async {
    if (result == ConnectivityResult.none) {
      hasConnection = false;
      connectionChangeController(hasConnection!);

      return hasConnection;
    }

    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        hasConnection = true;
        connectionChangeController(hasConnection!);
      } else {
        if (hasConnection == null) {
          hasConnection = false;
          connectionChangeController(hasConnection!);
        }
      }
    } on SocketException catch (_) {
      hasConnection = false;
      connectionChangeController(hasConnection!);
    }

    return hasConnection;
  }

  void connectionChangeController(bool _hasConnection) {
    if (_hasConnection) {
      emit(ConnectivityOnlineState());
    } else {
      emit(ConnectivityOfflineState());
    }
  }
}
