import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zoom_clone/app/app.bottomsheets.dart';
import 'package:zoom_clone/app/app.dialogs.dart';
import 'package:zoom_clone/app/app.locator.dart';
import 'package:zoom_clone/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:zoom_clone/resources/AuthMethods.dart';
import 'package:zoom_clone/ui/views/home/home_view.dart';
import 'package:zoom_clone/ui/views/login/login_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StreamBuilder(stream: AuthMethods().authChanges, builder: (context,snapshot){
        if(snapshot.connectionState==ConnectionState.waiting){
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if(snapshot.hasData){
          return const HomeView();
        }
        return const LoginView();
      }),
      initialRoute: Routes.startupView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
    );
  }
}
