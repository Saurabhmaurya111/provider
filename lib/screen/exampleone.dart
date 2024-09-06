import 'package:flutter/material.dart';
import 'package:project/screen/provider/example_one_with.dart';
import 'package:provider/provider.dart';

class Exampleone extends StatefulWidget {
  const Exampleone({super.key});

  @override
  State<Exampleone> createState() => _ExampleoneState();
}

class _ExampleoneState extends State<Exampleone> {
 
  @override
  Widget build(BuildContext context) {
          print('build');
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ExampleOnePro>(builder: (context,value,child){
            return  Slider(
            min: 0,
            max: 1,
            value: value.value,
            onChanged: (val) {
           
              value.setValue(val);
             
            },
          );
          }),
          Consumer<ExampleOnePro>(builder: (context,value,child){
            return     Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                decoration: BoxDecoration(
                    color: Colors.green.withOpacity(value.value),
                  ),
                  child: Center(
                    child: Text("Container 1"),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                   color: Colors.orange.withOpacity(value.value) ,
                  
                  ),
                  child: Center(
                    child: Text("Container 2"),
                  ),
                ),
              ),
            ],
          );
          }),
         
      
        ],
      ),
    );
  }
}
