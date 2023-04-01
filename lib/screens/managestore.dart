import 'package:flutter/material.dart';

import '../screens/gridscreen.dart';

class Managestore extends StatefulWidget {
  const Managestore({super.key});

  @override
  State<Managestore> createState() => _Managestore();
}

class _Managestore extends State<Managestore> {
  @override
  Widget build(BuildContext context) {
    // final double height = MediaQuery.of(context).size.height;
    // final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme:const IconThemeData(color: Colors.white),
        title: const Padding(
          padding: EdgeInsets.only(right: 50),
          child: Center(
              child: Text(
            'Manage Store',
            style: TextStyle(color: Colors.white),
          )),
        ),
      ),
      body: GridView.count(
        childAspectRatio: 1.3,
        padding: const EdgeInsets.all(15),
        primary: false,
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 15,
        children: [
          showGrid(
            str: const Text(
              'Marketing Designs',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            geticon: const Icon(
              Icons.volume_up_rounded,
              color: Color.fromARGB(255, 228, 237, 236),
              size: 40,
            ),
            clr: Colors.amber,
          ),
          showGrid(
            str: const Text(
              'Online Payments',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            geticon: const Icon(
              Icons.currency_rupee_outlined,
              color: Color.fromARGB(255, 219, 225, 219),
              size: 40,
            ),
            clr: Colors.lightGreen,
          ),
          showGrid(
              str: const Text(
                'Discount Coupons',
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              ),
              geticon: const Icon(
                Icons.discount_outlined,
                color: Color.fromARGB(255, 226, 222, 215),
                size: 40,
              ),
              clr: Colors.amberAccent),
          showGrid(
              str: const Text(
                'My Customers',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              geticon: const Icon(
                Icons.person_2_rounded,
                color: Color.fromARGB(255, 221, 230, 229),
                size: 40,
              ),
              clr: Colors.lightBlue),
          showGrid(
              str: const Text(
                'Store QR Code',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              geticon: const Icon(
                Icons.qr_code_scanner_rounded,
                color: Color.fromARGB(255, 239, 243, 245),
                size: 40,
              ),
              clr: Colors.grey),
          showGrid(
              str: const Text(
                'Extra Charges',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              geticon: const Icon(
                Icons.money_rounded,
                color: Color.fromARGB(255, 231, 226, 232),
                size: 40,
              ),
              clr: Colors.purple),
          showGrid(
              str: const Text(
                'Order Form',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              geticon: const Icon(
                Icons.list_rounded,
                color: Color.fromARGB(255, 233, 221, 225),
                size: 40,
              ),
              clr: Colors.purpleAccent),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.blue,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        // currentIndex: index,
        onTap: (value) {
          // setState(() {
          //   index = value;
          // });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_outlined),
            label: 'Product',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Manage',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
