import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'landing_event.dart';
part 'landing_state.dart';

class LandingBloc extends Bloc<LandingEvent, LandingState> {
  LandingBloc() : super(const LandingState()) {
    on<LandingInit>((event, emit) {
      // TODO: implement event handler
    });
  }
}
