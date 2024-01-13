import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:whm_places/data/places/dto/place_dto.dart';
import 'package:whm_places/presentation/common/services/geolocator_service.dart';
import 'package:whm_places/presentation/common/services/location_service.dart';
import 'package:whm_places/presentation/home/view_models/home_screen_view_model.dart';
import 'package:whm_places/presentation/home/view_models/place_card_view_model.dart';
import 'package:whm_places/repository/places/export.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';
part 'home_screen_bloc.freezed.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc({
    required PlacesRepository placesRepository,
  })  : _placesRepository = placesRepository,
        super(const HomeScreenState.loading()) {
    on<HomeScreenGetDataEvent>(_handleHomeScreenGetDataEvent);
    on<HomeScreenRefreshDataEvent>(_handleHomeScreenRefreshDataEvent);
    on<HomeScreenSearchEvent>(_handleHomeScreenSearchEvent);
  }

  final PlacesRepository _placesRepository;

  Future<void> _handleHomeScreenGetDataEvent(
    HomeScreenGetDataEvent event,
    Emitter<HomeScreenState> emit,
  ) async {
    final permissionStatus = await LocationService.checkAndRequestPermission();
    Position? currentLocation;
    if (permissionStatus == LocationPermission.whileInUse) {
      currentLocation = await Geolocator.getCurrentPosition();
    }

    await emit.forEach(
      _placesRepository.fetchData(),
      onData: (event) {
        return event.when(
          success: (placesDto) {
            final placeCards = _addDistanceToPlace(
              placesDto: placesDto,
              permissionStatus: permissionStatus,
              currentLocation: currentLocation,
            )..sort(
                (a, b) {
                  final distanceA = a.distanceViewModel?.distance ?? 0;
                  final distanceB = b.distanceViewModel?.distance ?? 0;

                  return distanceA.compareTo(distanceB);
                },
              );

            return HomeScreenState.loaded(
              homeScreenViewModel: HomeScreenViewModel(placeCards: placeCards),
            );
          },
          failure: (error) {
            if (state is! HomeScreenLoadedState) {
              return HomeScreenState.error(
                errorMessage: error.debugMessage,
                showModal: false,
              );
            } else {
              return state as HomeScreenLoadedState;
            }
          },
        );
      },
      onError: (error, stackTrace) => HomeScreenState.error(
        errorMessage: error.toString(),
        showModal: false,
      ),
    );
  }

  Future<void> _handleHomeScreenRefreshDataEvent(
    HomeScreenRefreshDataEvent event,
    Emitter<HomeScreenState> emit,
  ) async {
    await Future<void>.delayed(const Duration(seconds: 2));

    final permissionStatus = await LocationService.checkAndRequestPermission();
    Position? currentLocation;
    if (permissionStatus == LocationPermission.whileInUse) {
      currentLocation = await Geolocator.getCurrentPosition();
    }

    await emit.forEach(
      _placesRepository.fetchRemoteData(),
      onData: (event) {
        return event.when(
          success: (placesDto) {
            final placeCards = _addDistanceToPlace(
              placesDto: placesDto,
              permissionStatus: permissionStatus,
              currentLocation: currentLocation,
            )..sort(
                (a, b) {
                  final distanceA = a.distanceViewModel?.distance ?? 0;
                  final distanceB = b.distanceViewModel?.distance ?? 0;

                  return distanceA.compareTo(distanceB);
                },
              );

            return HomeScreenState.loaded(
              homeScreenViewModel: HomeScreenViewModel(placeCards: placeCards),
            );
          },
          failure: (error) {
            final oldState = state;

            emit(
              HomeScreenState.error(
                errorMessage: error.debugMessage,
                showModal: true,
              ),
            );

            return oldState;
          },
        );
      },
      onError: (error, stackTrace) {
        final oldState = state;

        emit(
          HomeScreenState.error(
            errorMessage: error.toString(),
            showModal: true,
          ),
        );

        return oldState;
      },
    );

    event.onFinished();
  }

  void _handleHomeScreenSearchEvent(
    HomeScreenSearchEvent event,
    Emitter<HomeScreenState> emit,
  ) {
    if (state is! HomeScreenLoadedState) return;

    final currentState = state as HomeScreenLoadedState;

    final placeCards = currentState.homeScreenViewModel.placeCards;
    final searchedCards = <PlaceCardViewModel>[];

    for (final placeCard in placeCards) {
      if (placeCard.placeName.toLowerCase().contains(event.searchText.toLowerCase())) {
        searchedCards.add(placeCard.copyWith(searchedText: event.searchText));
      }
    }

    emit(
      HomeScreenState.loaded(
        homeScreenViewModel: HomeScreenViewModel(
          isSearchStarted: true,
          searchText: event.searchText,
          placeCards: placeCards,
          searchedCards: searchedCards,
        ),
      ),
    );
  }

  List<PlaceCardViewModel> _addDistanceToPlace({
    required List<PlaceDto> placesDto,
    required LocationPermission permissionStatus,
    required Position? currentLocation,
  }) {
    final placeCards = <PlaceCardViewModel>[];

    for (final placeDto in placesDto) {
      final placeCard = PlaceCardViewModel.fromDto(placeDto);
      if (permissionStatus == LocationPermission.whileInUse && currentLocation != null) {
        final distanceViewModel = GeolocatorService.getDistance(
          targetLatitude: double.tryParse(placeDto.latitude.toString()) ?? 0,
          targetLongitude: double.tryParse(placeDto.longitude.toString()) ?? 0,
          currentLocation: currentLocation,
        );

        placeCards.add(
          placeCard.copyWith(
            distanceViewModel: distanceViewModel,
          ),
        );
      } else {
        placeCards.add(placeCard);
      }
    }

    return placeCards;
  }
}
