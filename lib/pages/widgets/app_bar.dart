import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: const Color(0xff203354),
      child: Row(children: [
        Row(
          children: [
            const SizedBox(
              width: 8,
            ),
            const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1491349174775-aaafddd81942?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60')),
            const SizedBox(
              width: 8,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Welcome, Shavani',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                Row(
                  children: const [
                    Icon(
                      Icons.location_history,
                      color: Colors.white,
                    ),
                    Text('ABC Road, LA',
                        style: TextStyle(color: Colors.white, fontSize: 10))
                  ],
                )
              ],
            )
          ],
        ),
        Expanded(
          child: Container(),
        ),
        Stack(
          alignment: Alignment.topRight,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                )),
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                  decoration: const BoxDecoration(color: Colors.red),
                  child: const Padding(
                    padding: EdgeInsets.all(2),
                    child: Text(
                      '4',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            ),
          ],
        ),
        const SizedBox(width: 8)
      ]),
    );
  }
}
