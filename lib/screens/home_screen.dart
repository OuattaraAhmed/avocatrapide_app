import 'package:avocat/widgets/grid_screen.dart';
import 'package:flutter/material.dart';
import 'package:avocat/widgets/grid_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Bienvenue',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Expanded(
            child: GridScreen(),
          )
        ],
      ),
    );
  }
}
