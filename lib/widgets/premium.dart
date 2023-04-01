import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Dukaanpremium extends StatefulWidget {
  const Dukaanpremium({super.key});

  @override
  State<Dukaanpremium> createState() => _DukaanpremiumState();
}

class _DukaanpremiumState extends State<Dukaanpremium> {
  final videoURL = "https://youtu.be/5RQ7DA7W-xU";
  late YoutubePlayerController _youtubeController;
  @override
  void initState() {
    final videoId = YoutubePlayer.convertUrlToId(videoURL);
    _youtubeController = YoutubePlayerController(
        initialVideoId: videoId!,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        ));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue.shade800,
        title: const Text('Dukaan Premium'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: [
          bodyCard(),
          const SizedBox(
            height: 90,
          ),
          const ListTile(
            title: Text(
              'Features',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          const ListTile(
            title: Text(
              'Custom Domain name',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
                'Get your own custom domain and build your brand on the internet'),
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.blue,
              child: CircleAvatar(
                radius: 24,
                backgroundColor: Colors.white,
                child: Icon(Icons.language),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const ListTile(
            title: Text(
              'Verified seller badge',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
                'Get green verified badge under your store name and build trust'),
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.blue,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 24,
                child: Icon(Icons.verified),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const ListTile(
            title: Text(
              'Dukaan for PC',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
                'Access all the exclusive premium feature on Dukaan for PC'),
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.blue,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 24,
                child: Icon(Icons.computer_outlined),
              ),
            ),
          ),
          const ListTile(
            title: Text(
              'Priority Support',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
                'Get your Questions resolved with our priority Customers Support'),
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.blue,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 24,
                child: Icon(Icons.headset_mic),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 400,
            height: 2,
            color: Colors.grey,
          ),
          const ListTile(
            title: Text(
              'What is Dukaan Premium?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: YoutubePlayer(
              width: 300,
              controller: _youtubeController,
              showVideoProgressIndicator: true,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            height: 5,
            color: Colors.grey,
          ),
          const ListTile(
            title: Text(
              'Frequently asked Question',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey,
          ),
          const ListTile(
            title: Text(
              'What type of businees can use dukaan premium?',
              style: TextStyle(
                fontSize: 18,
                // fontWeight: FontWeight.w600,
              ),
            ),
            trailing: Icon(
              Icons.minimize_outlined,
              color: Colors.grey,
            ),
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey,
          ),
          const ListTile(
            title: Text(
              'Dukaan is an easy to use platform to run,manage and grow your businessonline.You can create your online store, add products,manage inventory,accept online payments,and do much more.Its the simple and fastest way to take your business to next level.',
              style: TextStyle(fontSize: 16, color: Colors.grey
                  // fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey,
          ),
          const ListTile(
            title: Text(
              'What is your refund policy ?',
              style: TextStyle(
                fontSize: 18,
                // fontWeight: FontWeight.w600,
              ),
            ),
            trailing: Icon(
              Icons.add,
              color: Colors.grey,
            ),
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey,
          ),
          const ListTile(
            title: Text(
              'Will there be an automatic charge after the paid trial',
              style: TextStyle(
                fontSize: 18,
                // fontWeight: FontWeight.w600,
              ),
            ),
            trailing: Icon(
              Icons.add,
              color: Colors.grey,
            ),
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey,
          ),
          const ListTile(
            title: Text(
              'What payment methods do you offer?',
              style: TextStyle(
                fontSize: 18,
                // fontWeight: FontWeight.w600,
              ),
            ),
            trailing: Icon(
              Icons.add,
              color: Colors.grey,
            ),
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey,
          ),
          const ListTile(
            title: Text(
              'What happens when my free trial ends?',
              style: TextStyle(
                fontSize: 18,
                // fontWeight: FontWeight.w600,
              ),
            ),
            trailing: Icon(
              Icons.add,
              color: Colors.grey,
            ),
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey,
          ),
          const ListTile(
            title: Text(
              'What are the terms for the customs domain?',
              style: TextStyle(
                fontSize: 18,
                // fontWeight: FontWeight.w600,
              ),
            ),
            trailing: Icon(
              Icons.add,
              color: Colors.grey,
            ),
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: Colors.grey,
          ),
          const ListTile(
            title: Text(
              'Need help? Get in touch',
              style: TextStyle(
                fontSize: 18,
                // fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: SizedBox(
                    height: 90,
                    width: 160,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assests/chat.jpeg',
                            height: 30,
                            width: 20,
                            color: Colors.black,
                          ),
                          const Text('Live Chat')
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 30,
                  ),
                  child: SizedBox(
                    height: 90,
                    width: 160,
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assests/phone.png',
                            height: 30,
                            width: 20,
                            color: Colors.black,
                          ),
                          const Text('Phone Call')
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(
              children: [
                Container(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: const Size(170, 25),
                      foregroundColor: Colors.blue,
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      padding: const EdgeInsets.all(0.0),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Select Domain',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      child: TextButton(
                        style: TextButton.styleFrom(
                          fixedSize: const Size(170, 25),
                          foregroundColor: Colors.white,
                          backgroundColor: Color.fromARGB(255, 66, 124, 248),
                          padding: const EdgeInsets.all(0.0),
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Get premium',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(left: 25),
          //   child:
          // ),
        ],
      ),
    );
  }

  Widget bodyCard() {
    return Container(
      height: 130,
      color: Colors.blue.shade800,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: 10.0,
            child: Container(
              height: 220.0,
              width: 365.0,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.only(left: 40.0, right: 40.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Image.asset(
                        'assests/logo.jpg',
                        height: 5,
                        width: 20,
                        centerSlice: Rect.zero,
                        scale: 1,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        'Get Dukaan Premimum for Just',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      const Text(
                        'Rs 4,999/Year',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      const Text(
                        'All the advanced feature for scaling your',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                      const Text(
                        'business',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
