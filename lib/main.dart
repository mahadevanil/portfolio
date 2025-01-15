import 'package:auto_injector/auto_injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

import 'DI/injector.dart';
import 'config/config.dart';
import 'provider/bloc_provider.dart';
import 'routes/routes.dart';

var logger = Logger();
final autoInjector = AutoInjector();
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //*---(initializing auto injector )
  autoInjectInitializer();

  runApp(
    LayoutBuilder(builder: (context, constraints) {
      width = MediaQuery.of(context).size.width;
      height = MediaQuery.of(context).size.height;
      return MultiBlocProvider(
        providers: blocProviderList,
        child: MaterialApp.router(
          darkTheme: ThemeData(
            primarySwatch: Colors.blue,
            brightness: Brightness.dark,
            scaffoldBackgroundColor: const Color(0xff050505),
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.grey[900],
              titleTextStyle: const TextStyle(color: Colors.white),
            ),
          ),
          debugShowCheckedModeBanner: false,
          routerConfig: router,
        ),
      );
    }),
  );
}
