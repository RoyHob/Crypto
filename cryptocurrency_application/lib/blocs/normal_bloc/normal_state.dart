import 'package:cryptocurrency_application/blocs/normal_bloc/bloc.dart';

class NormalState {
  final bool isLight;
  NormalState({
    this.isLight = true,
  });
  NormalState copyWith({
    bool isLight = true,
  }) {
    return NormalState(
      isLight: isLight,
    );
  }
}

class InitialNormalState extends NormalState {
  InitialNormalState();
}
