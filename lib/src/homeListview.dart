import 'package:flutter/material.dart';

import 'package:modul_data/mockData.dart';
import 'package:modul_data/src/kurdistan.dart';

class KurdistanCities extends StatelessWidget {
  const KurdistanCities({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Kurdistan City",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: mockdata.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 200,
                                width: 300,
                                //  child: Image.network(data.city_image.toString()),

                                child: Image.network(
                                    mockdata[index]["city_image"].toString()),
                              ),
                              Positioned(
                                bottom: 10,
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)),
                                  //  child: Image.network(data.city_name.toString()),

                                  child: Text(
                                      mockdata[index]["city_name"].toString(),
                                      style: TextStyle(
                                        fontSize: 18,
                                      )),
                                ),
                              )
                            ],
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => DetailsScreen(
                                      index: index,
                                    )));
                          },
                        );
                      })),
            ],
          )),
    );
  }
}
