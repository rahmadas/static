import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarNavBar(),
    );
  }
}

class BelajarNavBar extends StatefulWidget {
  @override
  _BelajarNavBarState createState() => _BelajarNavBarState();
}

class _BelajarNavBarState extends State<BelajarNavBar> {
  int _selectedNavbar = 0;
  var _pages = <Widget>[
    Icon(Icons.home, size: 200, color: Colors.blue),
    Icon(Icons.assignment, size: 200, color: Colors.blue),
    Icon(Icons.person, size: 200, color: Colors.blue),
  ];

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navbar FOr Navigation"),
      ),
      body: Center(child: _pages.elementAt(_selectedNavbar)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ('Beranda'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: ('Pesanan'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ('Akun'),
          ),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: BelajarNavBar(),
//     );
//   }
// }

// class BelajarNavBar extends StatefulWidget {
//   @override
//   _BelajarNavBarState createState() => _BelajarNavBarState();
// }

// class _BelajarNavBarState extends State<BelajarNavBar> {
//   int _selectedNavbar = 0;

//   List<Widget> _halaman = <Widget>[
//     Container(
//       const Image(
//       image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
//       height: 50,
//       color: Colors.amber[600],
//       child: const Center(child: Text('Entry A')),
//     ),
//     Container(
//       height: 50,
//       color: Colors.amber[500],
//       child: const Center(child: Text('Entry B')),
//     ),
//     Container(
//       height: 50,
//       color: Colors.amber[600],
//       child: const Center(child: Text('Entry A')),
//     ),
//     Container(
//       height: 50,
//       color: Colors.amber[500],
//       child: const Center(child: Text('Entry B')),
//     ),
//     Container(
//       height: 50,
//       color: Colors.amber[100],
//       child: const Center(child: Text('Entry C')),
//     ),
//     Container(
//       height: 50,
//       color: Colors.amber[100],
//       child: const Center(child: Text('Entry d')),
//     ),
//   ];

//   void _changeSelectedNavBar(int index) {
//     setState(() {
//       _selectedNavbar = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Belajar Nav Bar"),
//       ),
//       body: Center(
//         child: _halaman.elementAt(_selectedNavbar),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.assignment),
//             label: 'Pesanan',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.mail),
//             label: 'Inbox',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Akun',
//           ),
//         ],
//         currentIndex: _selectedNavbar,
//         selectedItemColor: Colors.green,
//         unselectedItemColor: Colors.grey,
//         showUnselectedLabels: true,
//         onTap: _changeSelectedNavBar,
//       ),
//     );
//   }
// }
