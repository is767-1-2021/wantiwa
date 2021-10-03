import 'package:flutter/material.dart';

class BlankPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Blank Page'),
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.travel_explore_outlined)
              ),
              Tab(
                icon: Icon(Icons.local_pizza_outlined),
              ),
              Tab(
                icon: Icon(Icons.music_note_outlined),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
