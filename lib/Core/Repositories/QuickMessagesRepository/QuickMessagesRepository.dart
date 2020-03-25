import 'dart:convert';
import 'package:roommmez/Core/Apis/QuickMessagesApi/QuickMessagesApi.dart';
import 'package:roommmez/Core/Converters/QuickMessagesConverter.dart';
import 'package:roommmez/Core/Dto/QuickMessageDto.dart';
import 'package:roommmez/Core/Models/QuickMessageModel.dart';

class QuickMessagesRepository {
    
    final _quickMessagesApi = QuickMessagesApi();

    void getQuickMessages(Function(List<QuickMessageModel>) onSuccess, Object onError) {
        _quickMessagesApi.getQuickMessages()
            .then((value) {
                final quickMessages = jsonDecode(value.body) as List<dynamic>;
                final quickMessagesModelList = quickMessages.map((quickMessageDto) =>
                    QuickMessagesConverter.convertQuickMessageDtoToQuickMessageModel(
                        QuickMessageDto.fromJson(quickMessageDto))
                ).toList();
                onSuccess(quickMessagesModelList);
        }).catchError(onError);
    }
}