import 'package:flutter/material.dart';
import 'package:flutter_gallery/l10n/gallery_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:moneyManager/app/modules/home/teste.dart';
import 'home_controller.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    var localization = GalleryLocalizations.of(context);
    final drawerHeader = UserAccountsDrawerHeader(
      accountName: Text(
        "usuário xyz",
      ),
      accountEmail: Text(
        "teste@email.com",
      ),
      currentAccountPicture: const CircleAvatar(
        child: FlutterLogo(size: 42.0),
      ),
    );
    final drawerItems = ListView(
      children: [
        drawerHeader,
        ListTile(
          title: Text(
            "Ir para página 1",
          ),
          leading: const Icon(Icons.favorite),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text(
            "Ir para página 2",
          ),
          leading: const Icon(Icons.comment),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Texto",
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          // child: Text(
          //   localization.demoNavigationDrawerText,
          // ),
          child: DatumLegendWithMeasures.withSampleData(),
        ),
      ),
      drawer: Drawer(
        child: drawerItems,
      ),
    );
  }
}
