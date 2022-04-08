import 'package:flutter/material.dart';
import 'package:food_ordering_app/components/app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/img.png"),
            fit: BoxFit.fill
          )
        ),
        child: Column(
          children: [
            CustomAppBar(),
          ],
        ),
      ),
    );
  }
}
