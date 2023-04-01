import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Addtionalinfo extends StatefulWidget {
  const Addtionalinfo({super.key});

  @override
  State<Addtionalinfo> createState() => _AddtionalinfoState();
}

class _AddtionalinfoState extends State<Addtionalinfo> {
  bool valueNotify = true;

  onChangeMethod(bool newValue) {
    setState(() {
      valueNotify = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Center(
              child: Padding(
            padding: EdgeInsets.only(right: 50),
            child: Text('Addtional Information'),
          )),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 400,
              child: ListView(
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.share),
                    title: Text('Share Dukaan App'),
                    trailing: Icon(Icons.navigate_next_outlined),
                  ),
                  const ListTile(
                    leading: Icon(Icons.chat_bubble),
                    title: Text('Change Language'),
                    trailing: Icon(Icons.navigate_next_outlined),
                  ),
                  buildNOtificationOption(const Text('WhatsApp Chat Support'),
                      valueNotify, onChangeMethod),
                  const ListTile(
                    leading: Icon(Icons.lock),
                    title: Text('Privacy Policy'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.star_border_outlined),
                    title: Text('Rate Us'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.logout),
                    title: Text('Sign Out'),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

buildNOtificationOption(Widget title, bool value, Function onChangeMethod) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 18),
        child: Container(
            width: 24,
            child: Image.asset(
              'assests/whatsapp.png',
              color: Colors.grey,
            )),
      ),
      Container(
        padding: const EdgeInsets.only(
          right: 15,
        ),
        child: title,
        // Text(

        //   style: TextStyle(
        //       fontSize: 15,
        //       fontWeight: FontWeight.w600,
        //       color: Colors.grey[600]),
        // ),
      ),
      const SizedBox(
        width: 30,
      ),
      Transform.scale(
        // scale: 0.8,
        scaleX: 1,
        scaleY: 0.5,
        origin: Offset.zero,
        child: CupertinoSwitch(
          activeColor: Colors.blue,
          trackColor: Colors.grey,
          value: value,
          onChanged: (bool newValue) {
            onChangeMethod(newValue);
          },
        ),
      ),
    ],
  );
}
