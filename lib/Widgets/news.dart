//import 'package:first_project_flutter/screen/main.dart';
import 'package:flutter/material.dart';

class NewsClass extends StatelessWidget {
  NewsClass({
    super.key,
    this.date,
    this.descriptionnews,
    required this.imageNews,
    this.typeNews,
    required this.ownerimage,
    this.ownername,
  });
  final String? imageNews,
      typeNews,
      descriptionnews,
      ownerimage,
      ownername,
      date;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 18),
            width: 140,
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: NetworkImage(imageNews!),
                fit: BoxFit.cover, //change image fill type
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              //verticalDirection: VerticalDirection.up,
              // mainAxisSize: MainAxisSize.min,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 3,
                ),
                Text(
                  typeNews ?? "",
                  style: TextStyle(color: Colors.grey[600]),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  descriptionnews ?? "",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      //margin: EdgeInsets.only(left: 18),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(ownerimage!),
                          fit: BoxFit.cover, //change image fill type
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      ownername ?? "",
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 3,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      date ?? "",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
