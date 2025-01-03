part of 'internet_connection_cubit.dart';

@freezed
class InternetConnectionState with _$InternetConnectionState {
  const factory InternetConnectionState.initial() = InitialConnection;
  const factory InternetConnectionState.notConnected() = NotConnected;
  const factory InternetConnectionState.connected() = Connected;
}
