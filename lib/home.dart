import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_dark_light/provider/theme_provider.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Center(
          child: Text("LIGHT AND DARK"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.dark_mode),
          onPressed: () {
            provider.toggleTheme();
          }),
    );
  }
}
