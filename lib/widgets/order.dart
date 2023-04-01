import 'package:flutter/material.dart';

class Orderpage extends StatelessWidget {
  const Orderpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Padding(
          padding: EdgeInsets.only(
            right: 50,
          ),
          child: Center(
              child: Text(
            "Order #1688068",
            style: TextStyle(
              color: Colors.white,
            ),
          )),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  children: const [
                    Text(
                      'May 31,05:42 PM',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    Icon(
                      Icons.circle,
                      size: 15,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Delivered',
                      style: TextStyle(
                          fontSize: 17,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  width: 370,
                  height: 2,
                  color: Colors.black12,
                ),
                Row(
                  children: const [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      '1 ITEM ',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 188,
                    ),
                    Icon(
                      Icons.receipt,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Receipt',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assests/10.jpeg',
                      width: 50,
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Explore | Men | Navyblue',
                            style: TextStyle(fontSize: 15),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            '1 Piece',
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Size : XL',
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: const [
                              Text('1 x 799'),
                              SizedBox(
                                width: 200,
                              ),
                              Text('Rs 799'),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  width: 370,
                  height: 2,
                  color: Colors.black12,
                ),
                Row(
                  children: const [
                    SizedBox(
                      height: 30,
                    ),
                    Text('Item Total'),
                    SizedBox(
                      width: 244,
                    ),
                    Text('Rs 799'),
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      height: 30,
                    ),
                    Text('Delivary'),
                    SizedBox(
                      width: 256,
                    ),
                    Text(
                      'FREE',
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Grand Total',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 210,
                    ),
                    Text(
                      'Rs 799',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  width: 370,
                  height: 2,
                  color: Colors.black12,
                ),
                Row(
                  children: const [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'CUSTOMER DETAILS',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Icon(
                      Icons.share,
                      color: Color.fromARGB(255, 15, 188, 236),
                      size: 25,
                    ),
                    Text(
                      'SHARE',
                      style:
                          TextStyle(color: Color.fromARGB(255, 15, 188, 236)),
                    )
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Deepa',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    const SizedBox(
                      width: 210,
                    ),
                    Image.asset(
                      'assests/whatsapp.png',
                      height: 30,
                      width: 20,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assests/whatsapp.png',
                      height: 30,
                      width: 20,
                    ),
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Address',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      height: 30,
                    ),
                    Text('D 1101 Chartered Beverly'),
                  ],
                ),
                Row(
                  children: const [
                    Text('Hills Subramanyapura, PO'),
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      'City',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                      width: 100,
                    ),
                    Text('Pincode',
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      'Banglore',
                    ),
                    SizedBox(
                      height: 10,
                      width: 74,
                    ),
                    Text('560061')
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Payment',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'Online',
                    ),
                    const SizedBox(
                      height: 5,
                      width: 250,
                    ),
                    Image.asset(
                      'assests/paid.jpeg',
                      height: 30,
                      width: 50,
                    )
                  ],
                ),
                Container(
                  width: 370,
                  height: 2,
                  color: Colors.black12,
                ),
                Row(
                  children: const [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'ADDITIONAL INFORMATION',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      'State',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      'Karnataka',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Text(
                      'Email',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      'greeniceaqua@gmail.com',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
            width: 10,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10)),
                child: OutlinedButton(
                  onPressed: () {
                    //debugPrint('Received click');
                  },
                  child: const Text('Share Receipt'),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
