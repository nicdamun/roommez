// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'QuickMessageDto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuickMessageDto _$QuickMessageDtoFromJson(Map<String, dynamic> json) {
  return QuickMessageDto(
    image: json['avatar_url'] as String,
    name: json['login'] as String,
  );
}

Map<String, dynamic> _$QuickMessageDtoToJson(QuickMessageDto instance) =>
    <String, dynamic>{
      'avatar_url': instance.image,
      'login': instance.name,
    };
