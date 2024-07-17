import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive/desktop.dart';
import 'package:responsive_and_adaptive/mobile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        home:
            //  LayoutBuilder(builder: (context, constraints) {
            //   if(constraints.minWidth.toInt()<=560)
            //   {
            //     return const MobileScreen();
            //   }
            //   else {
            //     return const DesktopScreen();
            //   }
            // }
            // ,),
            // or we can use it to control the widgets in the screen
            Builder(
          builder: (context) {
            if (MediaQuery.of(context).size.width <= 560) {
              return MediaQuery(
                  data: MediaQuery.of(context)
                      .copyWith(textScaler: const TextScaler.linear(0.75)),
                  child: const MobileScreen());
            } else {
              return MediaQuery(
                  data: MediaQuery.of(context)
                      .copyWith(textScaler: const TextScaler.linear(1.25)),
                  child: const DesktopScreen());
            }
          },
        ));
  }
}
