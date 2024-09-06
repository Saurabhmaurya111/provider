import 'package:flutter/material.dart';
import 'package:project/screen/count_screen.dart';
import 'package:project/screen/exampleone.dart';
import 'package:project/screen/favourite/favourite_screen.dart';
import 'package:project/screen/provider/count_provider.dart';
import 'package:project/screen/provider/example_one_with.dart';
import 'package:project/screen/provider/favourite-provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
          ChangeNotifierProvider(create: (_) => CountProvider(),
          ),
          ChangeNotifierProvider(create: (_) => ExampleOnePro(),),

          ChangeNotifierProvider(create: (_) => FavouriteProvider(),),

          
      ],
      
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: FavouriteScreen(),
      ),
    );
  }
}
