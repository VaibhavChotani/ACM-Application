import 'package:flutter/material.dart';
class Scroll extends StatelessWidget {
  final List<String> pictures;
  final String title;
  final double iH;
  final double iW;

  Scroll({
    this.pictures,
    this.title,
    this.iH,
    this.iW,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                  fontSize: 19.5,
                  fontWeight: FontWeight.w600,
                ),
              ),
              GestureDetector(
                onTap: () => print('View $title'),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                  size: 27.0,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: iH,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            scrollDirection: Axis.horizontal,
            itemCount: pictures.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 15.0,
                ),
                width: iW,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0.0, 6.0),
                      blurRadius: 7.0,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40.0),
                  child: Image(
                    image: NetworkImage(pictures[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
