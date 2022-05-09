import 'package:cryptocurrency_application/blocs/normal_bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NormalBloc extends Bloc<NormalEvent, NormalState> {
  NormalBloc() : super(InitialNormalState()) {
    on<ChangeTheme>(
      (event, emit) async {
        emit(
          state.copyWith(
            isLight: true,
          ),
        );
      },
    );
  }
}
