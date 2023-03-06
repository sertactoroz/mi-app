import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PostCard extends StatelessWidget {
  const PostCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                image: NetworkImage(
                    'https://www.hippiechicmykonos.com/wp-content/uploads/2016/07/sushi-slide01.jpg'),
              ),
            ),
          ),
          SizedBox(
            width: 370,
            child: Card(
              margin: EdgeInsets.zero,
              child: Text(
                'Mikonos, Greece\nBeach and mountain views\nMar 6 - 11 \n\$865',
                style: TextStyle(
                  fontFamily: 'Helvetica',
                  fontSize: 16.0,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ]);
  }
}
