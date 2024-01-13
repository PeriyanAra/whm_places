import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'connectivity_event.dart';
part 'connectivity_state.dart';
part 'connectivity_bloc.freezed.dart';

class ConnectivityBloc extends Bloc<ConnectivityEvent, ConnectivityState> {
  ConnectivityBloc()
      : super(
          const ConnectivityState.connected(isMessageVisible: false),
        ) {
    on<ConnectivityCheckEvent>(_handleConnectivityCheckEvent);
    on<ChangeStateToConnectedEvent>(_handleChangeStateToConnectedEvent);
    on<ChangeStateToUnconnectedEvent>(_handleChangeStateToUnconnectedEvent);

    connectivity.onConnectivityChanged.listen(
      (result) {
        if (connectionStatus != result) {
          if (connectionStatus == ConnectivityResult.none && result != ConnectivityResult.none) {
            add(const ConnectivityEvent.changeStateToConnected());
          } else if (connectionStatus != ConnectivityResult.none &&
              result == ConnectivityResult.none) {
            add(const ConnectivityEvent.changeStateToUnconnected());
          }
          connectionStatus = result;
        }
      },
    );
  }

  final connectivity = Connectivity();
  ConnectivityResult connectionStatus = ConnectivityResult.mobile;

  Future<void> _handleConnectivityCheckEvent(
    ConnectivityCheckEvent event,
    Emitter<ConnectivityState> emit,
  ) async {
    connectionStatus = await connectivity.checkConnectivity();

    if (connectionStatus != ConnectivityResult.none) {
      emit(const ConnectivityState.connected(isMessageVisible: false));
    } else {
      emit(const ConnectivityState.unConnected(isMessageVisible: true));
    }
  }

  Future<void> _handleChangeStateToConnectedEvent(
    ChangeStateToConnectedEvent event,
    Emitter<ConnectivityState> emit,
  ) async {
    emit(const ConnectivityState.connected(isMessageVisible: true));

    await Future.delayed(
      const Duration(milliseconds: 1600),
      () => emit(
        const ConnectivityState.connected(
          isMessageVisible: false,
        ),
      ),
    );
  }

  Future<void> _handleChangeStateToUnconnectedEvent(
    ChangeStateToUnconnectedEvent event,
    Emitter<ConnectivityState> emit,
  ) async {
    await Future.delayed(const Duration(milliseconds: 300), () {});
    emit(const ConnectivityState.unConnected(isMessageVisible: true));
  }
}
