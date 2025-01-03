import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../helpers/internet_connection_helper.dart';

part 'internet_connection_cubit.freezed.dart';

part 'internet_connection_state.dart';

class InternetConnectionCubit extends Cubit<InternetConnectionState> {
  InternetConnectionCubit() : super(const InternetConnectionState.initial());
  var previousState;

  void emitNoInternetConnection() =>
      emit(const InternetConnectionState.notConnected());

  void emitHasInternetConnection() =>
      emit(const InternetConnectionState.connected());

  void setupInternetConnectionListener() {
    InternetConnectionHelper.isConnectedToInternet =
        InternetConnectionChecker.instance.connectionStatus ==
            InternetConnectionStatus.connected;
    InternetConnectionChecker.instance.onStatusChange.listen(
      (event) {
        previousState = state;
        switch (event) {
          case InternetConnectionStatus.connected:
            emit(const InternetConnectionState.connected());
            InternetConnectionHelper.isConnectedToInternet = true;
            break;
          case InternetConnectionStatus.disconnected:
            emit(const InternetConnectionState.notConnected());
            InternetConnectionHelper.isConnectedToInternet = false;
            break;
          default:
        }
      },
    );
  }
}
