import 'package:flutter/material.dart';

import '../constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(45),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.14),
                blurRadius: 30,
                offset: const Offset(0, -2))
          ]),
      child: Row(
        children: [
          const Icon(
            Icons.restaurant,
            color: kPrimaryColor,
          ),
          const SizedBox(
            width: 5,
          ),
          const Text(
            "FoodII",
            style: TextStyle(color: kTextcolor, fontSize: 25),
          ),
          const Spacer(),
          MenuItem(
            titel: "Home",
            press: () {},
          ),
          MenuItem(
            titel: "About",
            press: () {},
          ),
          MenuItem(
            titel: "Pricing",
            press: () {},
          ),
          MenuItem(
            titel: "Contact",
            press: () {},
          ),
          MenuItem(
            titel: "LogIn",
            press: () {},
          ),
          DefaultButton(title: "Get started", press: (){},)
        ],
      ),
    );
  }
}

class DefaultButton extends StatelessWidget {
  final String title;
  final VoidCallback press;

  const DefaultButton({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: kPrimaryColor),
      child: TextButton(
          onPressed: press,
          child: Text(
            title.toUpperCase(),
            style: const TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
          )),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String titel;
  final VoidCallback press;

  const MenuItem({
    Key? key,
    required this.titel,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Text(
          titel.toUpperCase(),
          style: const TextStyle(
              color: kTextcolor, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
