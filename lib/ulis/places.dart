import 'package:flutter/material.dart';

class PopularPlace extends StatelessWidget {
  final String temperature;
  final String location;
  final String image;

  const PopularPlace(
      {super.key,
      required this.temperature,
      required this.location,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(),
          color: Colors.blue[300]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text("${temperature}°C",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              Text("${location}",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
            ],
          ),
          SizedBox(
            width: 10,
          ),
          Image.asset(
            "${image}",
          ),
        ],
      ),
    );
  }
}
