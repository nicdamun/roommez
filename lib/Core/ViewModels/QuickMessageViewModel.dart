import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:roommmez/Core/Models/QuickMessageModel.dart';
import 'package:roommmez/Core/Repositories/QuickMessagesRepository/QuickMessagesRepository.dart';

class QuickMessageViewModel extends ChangeNotifier {

    List<QuickMessageModel> _quickMessages = [];
    final _quickMessagesRepository = QuickMessagesRepository();
    
    UnmodifiableListView get quickMessages => UnmodifiableListView(_quickMessages);
    
    void getQuickMessages() {
        _quickMessagesRepository.getQuickMessages(_onQuickMessagesSuccess, _onQuickMessagesError);
    }
    
    void _onQuickMessagesSuccess(List<QuickMessageModel> quickMessages) {
        _quickMessages = quickMessages;
        notifyListeners();
    }
    
    void _onQuickMessagesError(Object error) {
        debugPrint("On Quick Message Error: $error");
    }
}