// import 'dart:html';
//import 'dart:ui';

//import 'package:flutter/gestures.dart';
//import 'dart:ffi';

import 'package:flutter/material.dart';
//import 'secondpage.dart';
import 'package:first_project_flutter/Widgets/tap_widgets.dart';
import 'package:first_project_flutter/Widgets/news.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

List<String> imagenews = [
  "https://ichef.bbci.co.uk/images/ic/1008x567/p08tldgz.jpg",
  "https://images.unsplash.com/photo-1529107386315-e1a2ed48a620?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80",
  "https://en.shafaqna.com/wp-content/uploads/2022/01/CUE_international-day-of-ed2-1.jpg",
  "https://ichef.bbci.co.uk/images/ic/1008x567/p04fqyng.jpg",
  "https://images.immediate.co.uk/production/volatile/sites/3/2023/06/Star-Wars-Outlaws-release-date-48d7396.jpg?quality=90&webp=true&resize=1200,800",
  "http://admin.risingkashmir.com/Source/News/0eea10bf-bc12-47f6-990f-479c8202a880.jpg"
];
List<String> imageowner = [
  "https://media.istockphoto.com/id/1300512215/photo/headshot-portrait-of-smiling-ethnic-businessman-in-office.jpg?s=1024x1024&w=is&k=20&c=tq1C4HoZraH5szwBZqUf7sGVp7EPO-VB8PVbAPjagqY=",
  "https://d2v5dzhdg4zhx3.cloudfront.net/web-assets/images/storypages/short/linkedin-profile-picture-maker/dummy_image/thumb/004.webp",
  "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwHvEGamFasFcudDxAlTzNzd2ZsSRKsmf4Uw&usqp=CAU",
  "https://www.elitesingles.co.uk/wp-content/uploads/sites/59/2019/11/2b_en_articleslide_sm2-350x264.jpg",
  "https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/social-media-profile-photos-3.jpg"
];
List<String> desc = [
  "What Training Do Volleyball Players Need?",
  "Care is needed to avoid atomizing policy-making and losing coherence.",
  "Starting a new semester",
  "Issuing new news related to the planet",
  "Announcing a new game",
  "There will be a drop in temperatures",
];

List<String> date = [
  "Feb 28,2023",
  "Feb 27, 2023",
  "Feb 22,2023",
  "Feb 27, 2023",
  "Feb 28,2023",
  "Feb 20,2023",
];
List<String> typenews = [
  "Sport",
  "politic",
  "Education",
  "World",
  "Game",
  "Weather"
];
List<String> ownername = ["ahmad", "soha", "lama", "nada", "momen", "tarek"];

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  List<String> type = [
    "Politic",
    "Sport",
    "Education",
    "Game",
    "Weather",
    "World"
  ];
  @override
  Widget build(BuildContext context) {
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
                        width: 220,
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

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        title: Text("Second Screen"),
      ),
      body: Center(
        child: Text("This is the second screen."),
      ),
    );
  }
}

// class Mybpp extends StatelessWidget {
//   const Mybpp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   void incrementCounter() {
//     setState(() {
//       co++;
//     });
//   }

//   void decrement() {
//     setState(() {
//       co--;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 12, 0, 0),
//         title: Text("momen",
//             style: TextStyle(
//                 color: Color.fromARGB(133, 219, 113, 113), fontSize: 25.2)),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           const Text(
//             'counter',
//             style: TextStyle(fontSize: 22),
//             textAlign: TextAlign.center,
//           ),
//           Text(
//             "$co",
//             style: TextStyle(fontSize: 20),
//           ),
//           ElevatedButton.icon(
//             // <-- ElevatedButton
//             onPressed: decrement,
//             icon: Icon(
//               Icons.countertops,
//               size: 11,
//             ),
//             label: Text('decrement'),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: incrementCounter,
//         tooltip: 'Increment',
//         child:
//             const Icon(Icons.icecream, color: Color.fromARGB(255, 252, 6, 6)),
//       ),
//     );
//   }
// }
