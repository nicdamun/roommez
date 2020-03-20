import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:roommmez/Core/Models/BottomItemModel.dart';

class BottomNavBarViewModel {
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

    UnmodifiableListView<BottomItemModel> get bottomItems => UnmodifiableListView(_bottomItems);
}