import 'package:api_rick_and_morty/src/features/home/controller/home_controller.dart';
import 'package:api_rick_and_morty/src/features/home/widgets/tile_rick_and_morty.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = HomeController();

  @override
  void initState() {
    controller.init();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rick and Morty'),
      ),
      body: ListView(
        children: controller.rickAndMorty
            .map((rickAndMorty) => TileRickAndMorty(rick: rickAndMorty))
            .toList(),
      ),
    );
  }
}
