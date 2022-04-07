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
        children: const [
          Icon(
            Icons.restaurant,
            color: kPrimaryColor,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "FoodII",
            style: TextStyle(color: kTextcolor, fontSize: 25),
          ),
          Spacer(),
          MenuItem(titel: "Home"),
          MenuItem(titel: "About"),
          MenuItem(titel: "Pricing"),
          MenuItem(titel: "Contact"),
          MenuItem(titel: "LogIn"),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String titel;
  // final Function press;

  const MenuItem({
    Key? key,
    required this.titel,
    // required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
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
