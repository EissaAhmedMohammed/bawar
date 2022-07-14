import 'package:flutter/material.dart';

import 'package:modul_data/mockData.dart';

class DetailsScreen extends StatelessWidget {
  //final data = ModalRoute.of(context)!.settings.arguments as DataMod;
  //id dont know why errors of context
  DetailsScreen({
    Key? key,
    required this.index,
  }) : super(key: key);

  int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    //  child: Image.network(data.city_image.toString()),

                    child:
                        Image.network(mockdata[index]["city_image"].toString()),
                  ),
                  Positioned(
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 45,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              ),
              Container(
                //this container used for show city names have one child text style
                padding: EdgeInsets.fromLTRB(50, 10, 50, 15),
                //  child: Image.network(data.city_name.toString()),

                child: Text(mockdata[index]["city_name"].toString(),
                    style: TextStyle(
                      fontSize: 18,
                    )),
              ),

              ///this container used for discretion and information about the city and have one child is text style
              Container(
                padding: EdgeInsets.all(15),
                //  child: Image.network(data.description.toString()),

                child: Text(mockdata[index]["description"].toString(),
                    style: TextStyle(
                      fontSize: 16,
                    )),
              ),
            ]),
      ),
    );
  }
}
//