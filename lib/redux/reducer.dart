import 'package:zoba_flutter/redux/state.dart';

import 'action.dart';

AppState reducer(AppState state, dynamic action) {
  if (action is IsLoadingAction) {
    // ignore: avoid_print
    print('hi from reducer if TryAction');
    return state.copywith(isLoadingState: action.isLoadingAction);
  } else if (action is DrawerItemAction) {
    return state.copywith(drawerItemState: action.drawerItemAction);
  }

  return state;
}
