import 'package:flutter/material.dart';
import 'package:travel_app/screens/activity_screen.dart';
import 'package:travel_app/screens/hotels_screen.dart';
import 'package:travel_app/widgets/side_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App Inspiration',
      initialRoute: '/activities',
      routes: {
        ActivitiesScreen.routeName: (context) => const ActivitiesScreen(),
        HotelsScreen.routeName: (context) => const HotelsScreen(),
      },
      builder: (context, child){
        return _TravelApp(navigator: (child!.key as GlobalKey<NavigatorState>), child: child,);
      },
    );
  }
}

class _TravelApp extends StatefulWidget {
  const _TravelApp({Key? key, required this.navigator, required this.child}) : super(key: key);

  final GlobalKey<NavigatorState> navigator;
  final Widget child;

  @override
  State<_TravelApp> createState() => _TravelAppState();
}

class _TravelAppState extends State<_TravelApp> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFFF5EDDC),
      body: Row(
        children: [
          SideBar(
            width: width,
            height: height,
            navigator: widget.navigator,
          ),
          Expanded(child: widget.child),
        ],
      ),
    );
  }
}

