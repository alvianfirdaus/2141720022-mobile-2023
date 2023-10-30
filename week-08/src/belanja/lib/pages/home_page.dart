import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';
import 'package:belanja/widgets/card.dart';
import 'package:belanja/widgets/bottom_app_bar.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'DJI Mini 2 SE',
        price: 5690000,
        imageUrl: 'assets/dji.PNG',
        stok: 5,
        rating: 4.6),
    Item(
        name: 'DJI Inspire 2',
        price: 40599999,
        imageUrl: 'assets/dji_inspire2.PNG',
        stok: 5,
        rating: 5),
    Item(
        name: 'Sony HXR MC88',
        price: 21999000,
        imageUrl: 'assets/sony_mc88.PNG',
        stok: 5,
        rating: 4.5),
    Item(
        name: 'Sony HXR NX100',
        price: 19500000,
        imageUrl: 'assets/sony_nx100.PNG',
        stok: 10,
        rating: 4.7),
    Item(
        name: 'Atem Mini Pro',
        price: 5000000,
        imageUrl: 'assets/atem.PNG',
        stok: 2,
        rating: 4.9),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sunrise Camera & Gadgets'),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Menampilkan 2 item per baris
            childAspectRatio: 0.7, // Mengatur rasio lebar-tinggi item
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return AlvianCard(
                item: item,
                onTap: () =>
                    Navigator.pushNamed(context, '/item', arguments: item));
          },
        ),
        bottomNavigationBar: AlvianBottomAppBar());
  }
}
