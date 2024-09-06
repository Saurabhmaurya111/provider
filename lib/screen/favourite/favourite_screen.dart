import 'package:flutter/material.dart';
import 'package:project/screen/provider/favourite-provider.dart';
import 'package:provider/provider.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  List<int> selectedIndex = [];

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                
                return Consumer<FavouriteProvider>(builder: (context,value , child){
                   return  ListTile(
                  onTap: () {
                    if(value.selectedIndex.contains(index)){
                        value.removeItem(index);     
                    }
                    else{
                      value.addItem(index);
                    }
                  },
                  
                  title: Text(
                    'Item' + index.toString(),
                  ),
                  trailing: Icon(
                      value.selectedIndex.contains(index)
                          ? Icons.favorite
                          : Icons.favorite_border_outlined),
                );
                });
                
                
              },
            ),
          ),
        ],
      ),
    );
  }
}
