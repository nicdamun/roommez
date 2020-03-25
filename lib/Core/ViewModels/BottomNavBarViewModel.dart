import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:roommmez/Core/Models/BottomItemModel.dart';

class BottomNavBarViewModel extends ChangeNotifier {
    List<BottomItemModel> _bottomItems = [];
    
    BottomNavBarViewModel() {
        BottomItemModel bottomItemModelHome = BottomItemModel(name: "Home", isSelected: true, iconData: Icons.home);
        BottomItemModel bottomItemModelReward = BottomItemModel(name: "Rewards", isSelected: false, iconData: Icons.favorite_border);
        BottomItemModel bottomItemModelMenu = BottomItemModel(name: "Menu", isSelected: false, iconData: Icons.menu);
        BottomItemModel bottomItemModelProfile = BottomItemModel(name: "Profile", isSelected: false, iconData: Icons.person_outline);
        _bottomItems..add(bottomItemModelHome)
        ..add(bottomItemModelReward)
        ..add(bottomItemModelMenu)
        ..add(bottomItemModelProfile);
    }
    
    void selectItem(BottomItemModel bottomItemModel) {
        _bottomItems.firstWhere((item) => item.isSelected, orElse: () => null)?.isSelected = false;
        final selectedItem = _bottomItems.firstWhere((item) => item.name == bottomItemModel.name, orElse: () => null);
        selectedItem?.isSelected = true;
        notifyListeners();
    }

    UnmodifiableListView<BottomItemModel> get bottomItems => UnmodifiableListView(_bottomItems);
}