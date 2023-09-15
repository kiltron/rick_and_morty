import 'package:flutter/material.dart';
import 'package:rick_and_morty/features/presentation/widgets/custom_search_delegate.dart';
import 'package:rick_and_morty/features/presentation/widgets/persons_list_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Characters'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: CustomSearchDelegate());
            },
            color: Colors.white,
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: PersonsList(),
    );
  }
}
