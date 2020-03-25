import 'package:roommmez/Core/Dto/QuickMessageDto.dart';
import 'package:roommmez/Core/Models/QuickMessageModel.dart';

class QuickMessagesConverter {
    static QuickMessageModel convertQuickMessageDtoToQuickMessageModel(QuickMessageDto quickMessageDto) {
        return QuickMessageModel(
            name: quickMessageDto.name,
            image: quickMessageDto.image
        );
    }
}