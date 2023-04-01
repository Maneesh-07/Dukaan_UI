import 'package:flutter/material.dart';
import 'package:sample_project_01/screens/managestore.dart';
import 'package:sample_project_01/widgets/addtional.dart';
import 'package:sample_project_01/widgets/cataloge.dart';
import 'package:sample_project_01/widgets/order.dart';
import 'package:sample_project_01/widgets/payments.dart';
import 'package:sample_project_01/widgets/premium.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Center(child: Text('HOME')),
      ),
      //  drawer: showdrawer(),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.more_vert),
            title: const Text('Addtional Information'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Addtionalinfo(),
              ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.library_books_outlined),
            title: const Text('Manage Store'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Managestore(),
              ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_bag),
            title: const Text('Order'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Orderpage(),
              ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.payment),
            title: const Text('Catalouge'),
            onTap: () {
               Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Catalogueinfo(),
              ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.paypal_outlined),
            title: const Text('Payment'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Paymentscreen(),
              ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.workspace_premium_outlined),
            title: const Text('Dukaan Premium'),
            onTap: () {
               Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Dukaanpremium(),
              ));
            },
          ),
        ],
      ),
    );
  }
}
