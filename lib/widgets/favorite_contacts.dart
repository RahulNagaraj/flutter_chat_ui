import 'package:flutter/material.dart';

import '../models/message_model.dart';
import '../screens/chat_screen.dart';

class FavoriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Favorite Contacts',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                        letterSpacing: 1.0)),
                IconButton(
                  icon: Icon(Icons.more_horiz),
                  iconSize: 30.0,
                  color: Colors.blueGrey,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
              height: 120,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 10.0),
                scrollDirection: Axis.horizontal,
                itemCount: favorites.length,
                itemBuilder: ((BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => ChatScreen(
                                    user: favorites[index],
                                  )));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 35.0,
                            backgroundImage:
                                AssetImage(favorites[index].avatarUrl),
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            favorites[index].name,
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ))
        ],
      ),
    );
  }
}
