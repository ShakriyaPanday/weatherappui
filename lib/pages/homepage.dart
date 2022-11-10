import 'package:flutter/material.dart';
import 'package:weatherapp/ulis/places.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart),
              label: 'Prediction',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Calender',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
          ],
        ),
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
            leading: Icon(Icons.dehaze_rounded),
            centerTitle: true,
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    "image/profile.jpg",
                    scale: 90,
                  ),
                )
              ],
            )),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
               Color.fromARGB(255, 87, 165, 229),
              Color.fromARGB(255, 99, 169, 226),
              Color.fromARGB(255, 178, 203, 224),
            ],
          )),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(10.0),
              //Name Greating
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            "Hi Shakriya Panday !",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //Search bar
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(25)),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Search City")
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //Weather of location
                  Container(
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      // border: Border.all(),
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.blue[300],
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          "image/sunny.png",
                          height: 150,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: [
                            Text("25°C",
                                style: TextStyle(
                                    fontSize: 50, fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 15,
                            ),
                            Text("Kathmandu, Nepal",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold))
                          ],
                        )
                      ],
                    ),
                  ),
                  //Day of week
                  SizedBox(
                    height: 20,
                  ),

                  SizedBox(
                    height: 50,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Text("Sun",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: 30,
                            ),
                            Text("Mon",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: 30,
                            ),
                            Text("Tue",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: 30,
                            ),
                            Text("Wed",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: 30,
                            ),
                            Text("Thu",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: 30,
                            ),
                            Text("Fri",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: 30,
                            ),
                            Text("Sat",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Popular Locations", style: TextStyle(fontSize: 20)),
                      Text("View all", style: TextStyle(fontSize: 10))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //Popular places
                  SizedBox(
                      width: double.infinity,
                      height: 200,
                      child: GridView(
                        scrollDirection: Axis.horizontal,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 20.00,
                          crossAxisSpacing: 10.00,
                          childAspectRatio: 4 / 8,
                        ),
                        children: [
                          PopularPlace(
                            temperature: "18",
                            location: "Lalitpur",
                            image: "image/rain.png",
                          ),
                          PopularPlace(
                            temperature: "26",
                            location: "Birjung",
                            image: "image/rain.png",
                          ),
                          PopularPlace(
                            temperature: "28",
                            location: "Pokhara",
                            image: "image/rain.png",
                          ),
                          PopularPlace(
                            temperature: "21",
                            location: "Nuwakot",
                            image: "image/rain.png",
                          ),
                          PopularPlace(
                            temperature: "35",
                            location: "Chitwan",
                            image: "image/rain.png",
                          ),
                          PopularPlace(
                            temperature: "26",
                            location: "Hetauda",
                            image: "image/rain.png",
                          ),
                        ],
                      )),
                ],
              ),
            )),
          ),
        ));
  }
}
