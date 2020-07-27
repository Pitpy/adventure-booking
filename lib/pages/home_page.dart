import 'package:flutter/material.dart';

import './home_body.dart';
import '../widgets/navigator_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: HomeBody(),
      bottomNavigationBar: NavigatorBar(),
    );
  }
}
