import 'package:flutter/material.dart';
import 'package:rickandmortycubit/app_router.dart';

void main() {
  runApp(RickandMortyApp(appRouter: AppRouter(),));
}

class RickandMortyApp extends StatelessWidget {
 final AppRouter appRouter;
  const RickandMortyApp({Key? key, required this.appRouter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppRouter appRouter = AppRouter(); // Instantiate the AppRouter

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute, // Use generateRoute instead of onGenerateInitialRoutes
      theme: ThemeData(
        // Your theme configuration here
      ),
    );
  }
}
