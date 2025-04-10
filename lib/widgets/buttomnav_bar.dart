import 'package:flutter/material.dart';
import 'package:food_recipe/screens/home_screen.dart';

class BottomNavExample extends StatefulWidget {
  const BottomNavExample({super.key});

  @override
  State<BottomNavExample> createState() => _BottomNavExampleState();
}

class _BottomNavExampleState extends State<BottomNavExample> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    FavoriteScreen(),
    AddScreen(),
    Notifications(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _onFabPressed() {
    _onItemTapped(2);
  }

  @override
  Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: _onFabPressed,
//         tooltip: 'Add',
//         child: const Icon(Icons.add),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: BottomAppBar(
//         shape: const CircularNotchedRectangle(),
//         notchMargin: 8.0,
//         child: SizedBox(
//           height: 60,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               // Left side
//               IconButton(
//                 icon: Icon(
//                   Icons.home,
//                   color: _currentIndex == 0 ? Colors.blue : Colors.grey,
//                 ),
//                 onPressed: () => _onItemTapped(0),
//               ),
//               IconButton(
//                 icon: Icon(
//                   Icons.favorite,
//                   color: _currentIndex == 1 ? Colors.red : Colors.grey,
//                 ),
//                 onPressed: () => _onItemTapped(1),
//               ),

//               const SizedBox(width: 40),
//               IconButton(
//                 icon: Icon(
//                   Icons.notifications,
//                   color: _currentIndex == 3 ? Colors.blue : Colors.grey,
//                 ),
//                 onPressed: () => _onItemTapped(3),
//               ),
//               IconButton(
//                 icon: Icon(
//                   Icons.person,
//                   color: _currentIndex == 4 ? Colors.blue : Colors.grey,
//                 ),
//                 onPressed: () => _onItemTapped(4),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

    return Scaffold(
      body: _pages[_currentIndex],
      floatingActionButton: FloatingActionButton(
          onPressed: _onFabPressed,
          tooltip: 'Add',
          child: const Icon(Icons.add)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(20),
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                offset: Offset(0, -2),
              ),
            ],
          ),
          child: BottomNavigationBar(
            elevation: 2,
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.black,
            showUnselectedLabels: true,
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            type: BottomNavigationBarType.shifting,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_add_outlined),
                label: 'Favoruite',
              ),
              // BottomNavigationBarItem(
              //   icon: Icon(Icons.shopping_cart_outlined),
              //   label: 'Cart',
              // ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications_active),
                label: 'notifications',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_2_outlined),
                label: 'profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Profile Page')));
  }
}

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Notifications Page')));
  }
}

class AddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Add Page')));
  }
}

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Favorite Page')));
  }
}
