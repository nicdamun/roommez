import 'package:json_annotation/json_annotation.dart';

part 'QuickMessageDto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class QuickMessageDto {
    
    @JsonKey(name: "avatar_url") String image;
    @JsonKey(name: "login") String name;
    
    QuickMessageDto({this.image, this.name});

    factory QuickMessageDto.fromJson(Map<String, dynamic> json) => _$QuickMessageDtoFromJson(json);

    Map<String, dynamic> toJson() => _$QuickMessageDtoToJson(this);
}