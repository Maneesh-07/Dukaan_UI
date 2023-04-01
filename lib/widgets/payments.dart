import 'package:flutter/material.dart';
import 'package:sample_project_01/funtions/orderinfo.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

List<Widget> orderId = [
  const Text('Order #12345'),
  const Text('Order #12456'),
  const Text('Order #89465'),
  const Text('Order #54678'),
  const Text('Order #45637'),
  const Text('Order #67846'),
  const Text('Order #90876'),
  const Text('Order #87945')
];

List<Widget> orderDate = [
  const Text('Apr 02, 11:59 PM'),
  const Text('Apr 17, 12:59 PM'),
  const Text('Mar 2, 11:59 AM'),
  const Text('Aug 14, 01:59 PM'),
  const Text('Sep 03, 8:59 AM'),
  const Text('Jul  08, 9:59 AM'),
  const Text('Dec  18, 10:15 AM'),
  const Text('Nov  23, 6:19 AM')
];

List<Widget> price = [
  const Text(
    '₹799',
    style: TextStyle(fontSize: 15),
  ),
  const Text(
    '₹799',
    style: TextStyle(fontSize: 15),
  ),
  const Text(
    '₹399',
    style: TextStyle(fontSize: 15),
  ),
  const Text(
    '₹699',
    style: TextStyle(fontSize: 15),
  ),
  const Text(
    '₹449',
    style: TextStyle(fontSize: 15),
  ),
  const Text(
    '₹599',
    style: TextStyle(fontSize: 15),
  ),
  const Text(
    '₹1299',
    style: TextStyle(fontSize: 15),
  ),
  const Text(
    '₹1199',
    style: TextStyle(fontSize: 15),
  )
];

class Paymentscreen extends StatefulWidget {
  const Paymentscreen({super.key});

  @override
  State<Paymentscreen> createState() => _PaymentscreenState();
}

class _PaymentscreenState extends State<Paymentscreen> {
  int n = orderId.length;

  bool isVisible = false;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Center(
            child: Text(
          'Payment',
          style: TextStyle(color: Colors.white),
        )),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.info_outline,
                color: Colors.white,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Card(
              color: Colors.white,
              child: SizedBox(
                height: 190,
                width: 90,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Transaction Limit',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'A free limit up to which you will receive\nthe online payments directly in your bank',
                        style: TextStyle(
                            letterSpacing: 0.8,
                            wordSpacing: 1,
                            color: Colors.black54),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        // height: 30,
                        // width: 800,
                        child: pro(),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      const Text(
                        '36,668 out of 50,000',
                        style: TextStyle(color: Colors.black54),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          fixedSize: const Size(122, 30),
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blue,
                          padding: const EdgeInsets.all(0.0),
                          textStyle: const TextStyle(fontSize: 15),
                        ),
                        onPressed: () {},
                        child: const Text('Increased Limit'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: const [
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Default Method',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                SizedBox(
                  width: 130,
                ),
                Text(
                  'Online Payment',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                Icon(
                  Icons.navigate_next,
                  color: Colors.grey,
                ),
              ],
            ),
            Row(
              children: const [
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Payment Profile',
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  width: 130,
                ),
                Text(
                  'Bank Account',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                Icon(
                  Icons.navigate_next_outlined,
                  color: Colors.grey,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            //FOR SHOWING LINE
            Container(
              width: 200,
              height: 2,
              color: Colors.black12,
            ),
            Row(
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Payments Overview',
                  style: TextStyle(fontSize: 15),
                ),
                const SizedBox(
                  width: 140,
                ),
                GestureDetector(
                  onTap: () => setState(() {
                    isVisible = !isVisible;
                  }),
                  child: Row(
                    children: [
                      const Text(
                        'Lifetime',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      Icon(
                        isVisible == true
                            ? Icons.expand_less
                            : Icons.expand_more,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Visibility(
              visible: isVisible,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.orange,
                    ),
                    width: 175,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'AMOUNT ON HOLD',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '₹ 0',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.green,
                    ),
                    width: 175,
                    height: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'AMOUNT RECEIVED',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '₹ 13,332',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Text(
                  'Transaction',
                  style: TextStyle(fontSize: 17),
                )
              ],
            ),
            Row(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    fixedSize: const Size(110, 25),
                    foregroundColor: Colors.black54,
                    backgroundColor: const Color.fromARGB(255, 239, 235, 235),
                    padding: const EdgeInsets.all(0.0),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                  child: const Text('On Hold'),
                ),
                const SizedBox(
                  width: 10,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    fixedSize: const Size(120, 15),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.all(0.0),
                    textStyle: const TextStyle(fontSize: 17),
                  ),
                  onPressed: () {},
                  child: const Text('Payout (15)'),
                ),
                const SizedBox(
                  width: 9,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    fixedSize: const Size(110, 15),
                    foregroundColor: Colors.black54,
                    backgroundColor: const Color.fromARGB(255, 239, 235, 235),
                    padding: const EdgeInsets.all(0.0),
                    textStyle: const TextStyle(fontSize: 17),
                  ),
                  onPressed: () {},
                  child: const Text('Refund'),
                )
              ],
            ),
            for (int i = 0; i < n; i++)
              ordersInfo(
                amount: price[i],
                itemImage:
                    Image.asset('assests/$i.jpeg', height: 80, width: 36),
                date: orderDate[i],
                order: orderId[i],
                context: context,
              ),
          ],
        ),
      ),
    );
  }

  Widget pro() {
    return const LinearProgressIndicator(
      value: 0.3,
      backgroundColor: Colors.grey,
      color: Colors.blue,
      minHeight: 5,
    );
  }
}
