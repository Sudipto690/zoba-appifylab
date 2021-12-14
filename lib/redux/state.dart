class AppState {
  // ignore: prefer_typing_uninitialized_variables
  var isLoadingState;
  // ignore: prefer_typing_uninitialized_variables
  var drawerItemState;

  AppState({
    this.isLoadingState,
    this.drawerItemState,
  });

  AppState copywith({
    isLoadingState,
    drawerItemState,
  }) {
    return AppState(
      isLoadingState: isLoadingState ?? this.isLoadingState,
      drawerItemState: drawerItemState ?? this.drawerItemState,
    );
  }
}
