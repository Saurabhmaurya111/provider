import 'package:flutter/material.dart';
import 'package:project/screen/provider/favourite-provider.dart';
import 'package:provider/provider.dart';

class MyfavouriteScreen extends StatefulWidget {
  const MyfavouriteScreen({super.key});

  @override
  State<MyfavouriteScreen> createState() => _MyfavouriteScreenState();
}

class _MyfavouriteScreenState extends State<MyfavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    final FavouriteProviderScreen = Provider.of<FavouriteProvider>(context);
    return Scaffold(
       body:  Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: FavouriteProviderScreen.selectedIndex.length,
              itemBuilder: (context, index) {
                return Consumer<FavouriteProvider>(
                    builder: (context, value, child) {
                  return ListTile(
                    onTap: () {
                      if (value.selectedIndex.contains(index)) {
                        value.removeItem(index);
                      } else {
                        value.addItem(index);
                      }
                    },
                    title: Text(
                      'Item' + index.toString(),
                    ),
                    trailing: Icon(value.selectedIndex.contains(index)
                        ? Icons.favorite
                        : Icons.favorite_border_outlined),
                  );
                });
              },
            ),
          ),
        ],
    ));
  }
}