part of 'landing_bloc.dart';

sealed class LandingEvent extends Equatable {
  const LandingEvent();

  @override
  List<Object> get props => [];
}

final class LandingInit extends LandingEvent {}
