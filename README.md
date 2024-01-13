# WHM

Welcome to the source code of Project WHM Places.

## Table of Contents

* [Installing dependencies](#installing-dependencies)
* [Running Apps](#running-apps)
* [Data Classes](#data-classes)

## Installing dependencies

1. Ensure Flutter SDK is installed. We recommend
   using [Flutter Version Management tool](https://fvm.app/).
   Using FVM is recommended because it help all the team use same version
   of Flutter and don't worry about machines global version.
1. Run the following command from the route of this repository to install the flutter version used
   in this repo:

    ```zsh
    fvm install
    ```
1. Run this command from the project root to finish the setup and see which flutter version is
   active at the moment:
    ```zsh
    fvm flutter --version
    ```
1. Make sure your IDE uses the correct flutter version, e.g. for Android Studio you can check it by
   following [these steps](https://fvm.app/docs/getting_started/configuration#android-studio).
   For VS Code we have included .vscode folder which includes configuration files, so you
   don't need to do anything.

## Running Apps

You have 2 options for running the project

1. Run it directly from the terminal with fvm flutter command
1. Run the app from IDE, in VS Code case we have settings file included, which will add option to your IDE

## Data Classes

Generate all data containing files with Freezed(view models, models, entities, DTOs)
For example:

## 1. View Models

View Models are the data classes that are necessary for the UI and they are storing data in that way,
which way UI(widgets) are expecting

```dart
import 'package:domain/domain_layer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_view_model.freezed.dart';

@freezed
class CharacterViewModel with _$CharacterViewModel {
  const factory CharacterViewModel({
    required int id,
    required String name,
    required String status,
    required String species,
    required String gender,
    required String image,
  }) = _CharacterViewModel;

  factory CharacterViewModel.fromEntity({
    required Character character,
  }) {
    return CharacterViewModel(
      id: character.id,
      name: character.name,
      status: character.status,
      species: character.species,
      gender: character.gender,
      image: character.image,
    );
  }
}
```


## 2. DTO

DTO is the data class of data layer, the one that is coming from server, 
in this case better not to specify the data type and better to set all of them dynamic
the reason of that is simple, if one day there will be an error on server side 
application will not have any problem, otherwise application will wait for specific type, 
but if it will not come, app will get an error, in this case it will handle all cases and transfer to ViewModel

```dart
import 'package:data/src/home/dto/origin_dto.dart';
import 'package:domain/domain_layer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_dto.freezed.dart';
part 'character_dto.g.dart';

@freezed
class CharacterDto with _$CharacterDto {
  const factory CharacterDto({
    required dynamic id,
    required dynamic name,
    required dynamic status,
    required dynamic species,
    required dynamic gender,
    required dynamic image,
    required dynamic type,
    required OriginDto origin,
    required OriginDto location,
    required dynamic url,
    required dynamic created,
    required List<dynamic> episode,
  }) = _CharacterDto;

  factory CharacterDto.fromJson(Map<String, Object?> json) =>
      _$CharacterDtoFromJson(json);

  const CharacterDto._();

  Character toEntity() {
    return Character(
      id: id,
      name: name,
      status: status,
      species: species,
      gender: gender,
      image: image,
    );
  }
}