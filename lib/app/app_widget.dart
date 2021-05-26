import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:moneyManager/app/modules/store/main_store.dart';
import 'package:provider/provider.dart';
import 'package:load/load.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return MultiProvider(
      providers: [Provider<MainStore>.value(value: MainStore())],
      child: MaterialApp(
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate
        ],
        supportedLocales: [const Locale('pt', 'BR')],
        debugShowCheckedModeBanner: false,
        navigatorKey: Modular.navigatorKey,
        title: 'Credisan Pix',
        // theme: ThemeData(
        //   colorScheme: ColorScheme.light(primary: const Color(0xff004c24)),
        //   primaryColor: Color(0xff004c24),
        //   accentColor: Color(0xffef7d00),
        // ),
        initialRoute: '/',
        onGenerateRoute: Modular.generateRoute,
        builder: (BuildContext context, Widget child) {
          return Material(
            child: LoadingProvider(
                loadingWidgetBuilder: (ctx, data) {
                  return Center(
                    child: Container(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Color(0xff004c24)),
                          backgroundColor: Color(0xffef7d00),
                        ),
                      ],
                    )),
                  );
                },
                themeData: null,
                child: child),
          );
        },
      ),
    );
  }
}
