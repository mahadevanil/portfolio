// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';

import '../bloc/landing/landing_bloc.dart';

List<SingleChildWidget> blocProviderList = [
  //!---------(Landing bloc)
  BlocProvider(
    create: (context) => LandingBloc(),
  ),
];
