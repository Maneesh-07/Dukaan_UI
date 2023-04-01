import 'package:flutter/material.dart';

class Catalogueinfo extends StatefulWidget {
  const Catalogueinfo({super.key});

  @override
  State<Catalogueinfo> createState() => _Catalogueinfo();
}

class _Catalogueinfo extends State<Catalogueinfo> {
  bool isSwitched = false;

  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
    } else {
      setState(() {
        isSwitched = false;
      });
    }
  }

  final items = [
    'Couch Potato | Women',
    'Couch Potato | Men | Blue',
    'Mug | Explore',
    'Combo Blahst 1 | Pack',
    'Mug | Orchard',
    'Combo Blahst 2 | Pack',
    'I See Combo Pack',
    'Kids Combo Blahst'
  ];

  final price = ['799', '799', '399', '699', '449', '599', '1,299', '1,199'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text('Catalogue'),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          ],
          centerTitle: true,
          bottom: const TabBar(tabs: [
            Tab(
              child: Text(
                'Products',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Tab(
              child: Text(
                'Categories',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.builder(
                itemBuilder: (context, index) => viewCard(index: index),
                itemCount: items.length,
              ),
            )),
            Container(
              width: 4,
              height: 6,
            )
          ],
        ),
      ),
    );
  }

  viewCard({required int index}) {
    return Container(
      height: 170,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.zero,
                child: Image.asset('assests/$index.jpeg'),
              ),
              title: Text(
                items[index],
                style: const TextStyle(fontSize: 17),
              ),
              subtitle: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text('1 Piece'),
                      Text(
                        "₹${price[index]}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 15),
                      ),
                      const Text(
                        'In Stock',
                        style: TextStyle(
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              trailing: Container(
                width: 30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Icon(
                      Icons.more_vert,
                      size: 16,
                    ),
                    Switch(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: isSwitched,
                      onChanged: toggleSwitch,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              // height: 20,
              width: 400,
              child: Divider(
                color: Colors.black,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.share_outlined),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'Share Product',
                  style: TextStyle(fontSize: 20),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
