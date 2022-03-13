import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: 'arama',
          border: InputBorder.none,
          prefixIcon: Icon(
            Icons.search_rounded,
            color: Theme.of(context).colorScheme.onSurface,
          ),
          suffixIconConstraints: const BoxConstraints(maxHeight: 30),
          suffixIcon: FloatingActionButton(
            mini: true,
            child: const Icon(Icons.mic),
            onPressed: () {},
          )),
    );
  }
}
