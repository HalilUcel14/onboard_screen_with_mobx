import 'package:best_baltanem/best_baltanem.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../model/onboard_model.dart';

part 'onboard_viewmodel.g.dart';

class OnBoardViewModel = _OnBoardViewModelBase with _$OnBoardViewModel;

abstract class _OnBoardViewModelBase with Store, BaseViewModel {
  List<OnBoardModel> onBoardItems = [];
  //
  @observable
  int currentPage = 0;
  //
  @action
  void changeCurrentPage(int value) {
    currentPage = value;
  }

  //
  @override
  void setContext(BuildContext contex) => context = context;
  @override
  void init() {
    onBoardItems = baseOnBoardListed;
  }
}
