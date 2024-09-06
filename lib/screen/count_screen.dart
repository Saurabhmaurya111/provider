import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project/screen/provider/count_provider.dart';
import 'package:provider/provider.dart';

class CountScreen extends StatefulWidget {
  const CountScreen({super.key});

  @override
  State<CountScreen> createState() => _CountScreenState();
}
  
class _CountScreenState extends State<CountScreen> {
  int count = 0;
   
   @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //       final countProvider = Provider.of<CountProvider>(context , listen: false);
  //  Timer.periodic(Duration(seconds: 2), (timer){
  //   countProvider.setCount();
  //  });

  // }

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context , listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
        centerTitle: true,
      ),
      body: Center(
        child: Consumer<CountProvider>(builder: (context, value, child) {
          return Text(
            value.count.toString(),
            style: TextStyle(fontSize: 50),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.setCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
