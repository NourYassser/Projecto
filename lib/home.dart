import 'package:flutter/material.dart';
import 'package:resturant_app/drinks.dart';
import 'package:resturant_app/meals.dart';
import 'package:resturant_app/setting.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPageIndex=0;

  final pages=[
    Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                decoration: ShapeDecoration(
                  image: const DecorationImage(
                    image: AssetImage('images/photo2.jpg'),
                    fit: BoxFit.fitWidth,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      width: 200,
                      height: 150,
                      decoration: ShapeDecoration(
                        image: const DecorationImage(
                          image: AssetImage('images/photo1.jpg'),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Container(
                      width: 200,
                      height: 150,
                      decoration: ShapeDecoration(
                        image: const DecorationImage(
                          image: AssetImage('images/photo3.jpg'),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Container(
                      width: 200,
                      height: 150,
                      decoration: ShapeDecoration(
                        image: const DecorationImage(
                          image: AssetImage('images/photo5.jpg'),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Container(
                      width: 200,
                      height: 150,
                      decoration: ShapeDecoration(
                        image: const DecorationImage(
                          image: AssetImage('images/photo6.jpg'),
                          fit: BoxFit.fill,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Have a Coffee hava a nice day",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                width: double.infinity,
                height: 250,
                decoration: ShapeDecoration(
                  image: const DecorationImage(
                    image: AssetImage('images/photo7.jpg'),
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Don't miss out on this",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                width: double.infinity,
                height: 250,
                decoration: ShapeDecoration(
                  image: const DecorationImage(
                    image: AssetImage('images/photo4.jpg'),
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    const Meals(),
    const Drinks(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPageIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: const Color.fromARGB(255, 190, 29, 17),
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.food_bank)),
            label: 'Meals',
          ),
          NavigationDestination(
            icon: Badge(
              child: Icon(Icons.local_drink_outlined),
            ),
            label: 'Drinks',
          ),
        ],
      ),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const settingscr()));
            },
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
          )
        ],
        title: const Text("Resturant App"),
        centerTitle: true,
      ),
    );
  }
}
