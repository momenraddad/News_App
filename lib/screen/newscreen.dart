import 'package:flutter/material.dart';
import 'package:first_project_flutter/Widgets/tap_widgets.dart';
import 'package:first_project_flutter/Widgets/news.dart';
import 'package:first_project_flutter/Lists/inforN.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey[50],
          leading: Container(
            margin: EdgeInsets.only(left: 20),
            padding: EdgeInsets.only(left: 3),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                //  borderRadius: BorderRadius.circular(30),
                color: Colors.grey[200]),
            child: IconButton(
              alignment: Alignment.centerRight,
              onPressed: () {},
              icon: Icon(
                color: Colors.black,
                weight: 30,
                Icons.arrow_back_ios,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              Container(
                  margin: EdgeInsets.only(left: 22, top: 2),
                  child: Text(
                    "Discover",
                    style: TextStyle(
                        color: Color.fromARGB(255, 6, 6, 6),
                        fontSize: 44,
                        fontWeight: FontWeight.bold),
                  )),
              Container(
                  margin: EdgeInsets.only(left: 24, top: 3),
                  child: Text(
                    "News from all around the world",
                    style: TextStyle(color: Colors.grey[600]),
                  )),
              Container(
                padding: EdgeInsets.only(left: 10),
                margin:
                    EdgeInsets.only(top: 30, left: 15, right: 15, bottom: 20),
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey[200],
                ),
                child: Row(children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey[600],
                    size: 33,
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(color: Colors.grey[600], fontSize: 16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: size.width * 0.55,
                      ),
                      Image(
                        color: Colors.grey[600],
                        image: AssetImage("assets/images/row.png"),
                      )
                    ],
                  )
                ]),
              ),
              SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 10),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Taptype(
                      name: "All",
                      isactive: true,
                    ),
                    ...List.generate(
                        type.length,
                        (index) => Taptype(
                              name: type[index],
                              isactive: false,
                            ))
                  ],
                ),
              ),
              Column(
                children: [
                  ...List.generate(
                      6,
                      (index) => NewsClass(
                            imageNews: imagenews[index],
                            ownerimage: imageowner[index],
                            date: date[index],
                            descriptionnews: desc[index],
                            typeNews: typenews[index],
                            ownername: ownername[index],
                          ))
                ],
              ),
            ],
          ),
        ));
  }
}
