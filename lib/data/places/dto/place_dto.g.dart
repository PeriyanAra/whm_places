// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaceDto _$$_PlaceDtoFromJson(Map<String, dynamic> json) => _$_PlaceDto(
      id: json['id'],
      title: json['title'],
      image: json['image'],
      description: json['description'],
      difficulty: json['difficulty'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      createdDate: json['createdDate'],
    );

Map<String, dynamic> _$$_PlaceDtoToJson(_$_PlaceDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'description': instance.description,
      'difficulty': instance.difficulty,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'createdDate': instance.createdDate,
    };
