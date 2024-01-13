part of 'connectivity_bloc.dart';

@freezed
class ConnectivityEvent with _$ConnectivityEvent {
  const factory ConnectivityEvent.checkConnectivity() = ConnectivityCheckEvent;

  const factory ConnectivityEvent.changeStateToConnected() = ChangeStateToConnectedEvent;

  const factory ConnectivityEvent.changeStateToUnconnected() = ChangeStateToUnconnectedEvent;
}
