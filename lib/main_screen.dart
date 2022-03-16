import 'package:flutter/material.dart';
import 'package:quiz_d_123190024/detail_screen.dart';
import 'package:quiz_d_123190024/model/app_store.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Praktikum Mobile"),
        ),
        body: ListView.builder(
            itemCount: appList.length,
            itemBuilder: (context, index) {
              final AppStore place = appList[index];
              return Card(
                  child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return DetailScreen(place: place);
                        }));
                      },
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Image.asset(place.imageLogo),
                          ),
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    place.name,
                                    style: TextStyle(fontSize: 16.0),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(place.genre),
                                ],
                              ),
                            ),
                          )
                        ],
                      )));
            }));
  }
}
