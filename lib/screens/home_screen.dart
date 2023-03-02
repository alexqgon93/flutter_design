import 'package:flutter_design/widgets/card_table.dart';

import '../widgets/background.dart';
import 'package:flutter_design/widgets/custom_bottom_navigation.dart';
import 'package:flutter_design/widgets/page_title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Background(),
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [PageTitle(), CardTable()]),
    );
  }
}
