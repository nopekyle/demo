import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo/pages/widgets/app_bar.dart';
import 'package:demo/pages/widgets/discount.dart';
import 'package:demo/pages/widgets/list_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const CustomAppBar(),
          CarouselSlider(
            options: CarouselOptions(height: 400.0, autoPlay: true),
            items: [1, 2, 3, 4].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      child: Image.network(
                          'https://images.unsplash.com/photo-1552674605-db6ffd4facb5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
                    ),
                  );
                },
              );
            }).toList(),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('What would you like to order today?',
                  style: TextStyle(fontSize: 24)),
            ),
          ),
          _buttonsRow(),
          _customTextField(),
          const ListCard(
              type: 'Economy',
              description:
                  'Select the vehicle size and price that fits your comfort level',
              image:
                  'https://images.unsplash.com/photo-1580273916550-e323be2ae537?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80'),
          const ListCard(
              type: 'Taxicab',
              description:
                  'Support your local cab company with an opportunity to serve you.',
              image:
                  'https://images.unsplash.com/photo-1556122071-e404eaedb77f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dGF4aXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
          const ListCard(
              type: 'Luxury',
              description:
                  'Support your local cab company with an opportunity to serve you.',
              image:
                  'https://images.unsplash.com/photo-1601929862217-f1bf94503333?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80'),
          const SizedBox(
            height: 16,
          ),
          const Discount()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xff203354),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.table_view), label: 'Services'),
            BottomNavigationBarItem(
                icon: Icon(Icons.inbox_outlined), label: 'My Orders'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: 'My Account')
          ]),
    );
  }

  Widget _customTextField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.grey[100],
        ),
        child: Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Icon(Icons.search),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Where to?',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                ),
              ),
            ),
            Icon(Icons.lock_clock),
            SizedBox(width: 4.0),
            Text('Now'),
            SizedBox(width: 4.0),
            Icon(Icons.arrow_drop_down),
            SizedBox(width: 8.0),
          ],
        ),
      ),
    );
  }

  Widget _buttonsRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          OutlinedButton(
              onPressed: () {
                setState(() {
                  _current = 0;
                });
              },
              style: OutlinedButton.styleFrom(
                  backgroundColor:
                      (_current == 0 ? const Color(0xff203354) : Colors.white)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Ride',
                    style: TextStyle(
                        color: (_current == 0 ? Colors.white : Colors.grey))),
              )),
          OutlinedButton(
              onPressed: () {
                setState(() {
                  _current = 1;
                });
              },
              style: OutlinedButton.styleFrom(
                  backgroundColor:
                      (_current == 1 ? const Color(0xff203354) : Colors.white)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Eat',
                    style: TextStyle(
                        color: (_current == 1 ? Colors.white : Colors.grey))),
              )),
          OutlinedButton(
              onPressed: () {
                setState(() {
                  _current = 2;
                });
              },
              style: OutlinedButton.styleFrom(
                  backgroundColor:
                      (_current == 2 ? const Color(0xff203354) : Colors.white)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Grocery',
                    style: TextStyle(
                        color: (_current == 2 ? Colors.white : Colors.grey))),
              )),
          OutlinedButton(
              onPressed: () {
                setState(() {
                  _current = 3;
                });
              },
              style: OutlinedButton.styleFrom(
                  backgroundColor:
                      (_current == 3 ? const Color(0xff203354) : Colors.white)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Shop',
                    style: TextStyle(
                        color: (_current == 3 ? Colors.white : Colors.grey))),
              ))
        ],
      ),
    );
  }
}
