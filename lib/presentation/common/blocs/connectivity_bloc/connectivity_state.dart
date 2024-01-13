part of 'connectivity_bloc.dart';

@freezed
class ConnectivityState with _$ConnectivityState {
  const factory ConnectivityState.initial({
    required bool isMessageVisible,
  }) = ConnectivityInitialState;

  const factory ConnectivityState.connected({
    required bool isMessageVisible,
  }) = ConnectivityConnectedState;

  const factory ConnectivityState.unConnected({
    required bool isMessageVisible,
  }) = ConnectivityUnconnectedState;
}
