import 'package:api_rick_and_morty/src/features/home/models/rick_and_morty_model.dart';
import 'package:flutter/material.dart';

class TileRickAndMorty extends StatelessWidget {
  const TileRickAndMorty({super.key, this.rick});

  final RickAndMortyModel? rick;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(rick!.name ?? ''),
      leading: Image.network(rick!.image!),
      trailing: Text(rick!.gender!),
    );
  }
}
