import 'package:flutter/material.dart';

void main() {
  runApp(const Profile());
}

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(children: [
          Container(
            height: 159,
            width: 159,
            margin: const EdgeInsets.fromLTRB(115, 60, 116, 36),
            padding: const EdgeInsets.fromLTRB(116, 64, 115, 36),
            decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              image: const DecorationImage(
                image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2Z2Lz8UEErxjiFGAb_vAQc4-CmWHp7IgziA&usqp=CAU'),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(90.0)),
              border: Border.all(
                color: const Color.fromRGBO(189, 255, 215, 0.9),
                width: 3.0,
              ),
            ),
          ),
          const Text("Full NAME",
              style: TextStyle(
                fontSize: 24,
              )),
          const Padding(
            padding: EdgeInsets.only(left: 64, top: 15, right: 64),
            child: Center(
              child: Text(
                'Lorem .',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Container(
              height: 54,
              width: 299,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
                color: Color.fromARGB(1, 242, 255, 243),
                borderRadius: BorderRadius.all(Radius.circular(6.0)),
              ),
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 80.0),
                    child: Text(
                      "LinkedIn",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Container(
              height: 54,
              width: 299,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
                color: Color.fromARGB(78, 225, 212, 237),
                borderRadius: BorderRadius.all(Radius.circular(6.0)),
              ),
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 80.0),
                    child: Text(
                      "Facebook",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Container(
              height: 54,
              width: 299,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    blurRadius: 10,
                  ),
                ],
                color: Color.fromARGB(255, 139, 208, 224),
                borderRadius: BorderRadius.all(Radius.circular(6.0)),
              ),
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 80.0),
                    child: Text(
                      "Instagram",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
          ),

          ///website
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: Container(
              height: 54,
              width: 299,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    blurRadius: 10,
                  ),
                ],
                color: Color.fromARGB(255, 200, 141, 191),
                borderRadius: BorderRadius.all(Radius.circular(6.0)),
              ),
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 80.0),
                    child: Text(
                      " My Website",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              height: 59,
              width: 59,
              margin: const EdgeInsets.fromLTRB(20, 18, 36, 36),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://www.freepnglogos.com/uploads/whatsapp-logo-light-green-png-0.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(Radius.circular(90.0)),
              ),
            ),
            Container(
              height: 59,
              width: 59,
              margin: const EdgeInsets.fromLTRB(40, 18, 36, 36),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1rDfrs3Jus3ipD957uVhKr-fwHxIoaknlDYPSeFBrZss__1hOC33CPT0f8AD59tvCDMk&usqp=CAU'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(Radius.circular(90.0)),
              ),
            ),
            Container(
              height: 59,
              width: 59,
              margin: const EdgeInsets.fromLTRB(40, 18, 20, 36),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://icons.iconarchive.com/icons/alecive/flatwoken/512/Apps-Chat-icon.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(Radius.circular(90.0)),
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}
