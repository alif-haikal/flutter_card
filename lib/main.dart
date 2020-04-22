import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: PokkaCard(),
));


class PokkaCard extends StatefulWidget {
  @override
  _PokkaCardState createState() => _PokkaCardState();
}

class _PokkaCardState extends State<PokkaCard> {

  int flutterLevel = 0;
  String levelDescription='Beginner';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Pokka ID Card'),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0.0, // shadow border lbih kurang ar
      ),


      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          setState(() {
            flutterLevel++;

            if(flutterLevel <= 6 && flutterLevel > 3){
              levelDescription = 'Intermediate';
            } else if(flutterLevel > 6  ) {
              levelDescription = 'Advance';
            }


          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),


      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
//          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

// other sample or way nk buat jarak antara image dan text
//            Padding(
//              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 100.0),
//              child: Center(
//                child: CircleAvatar(
//                  backgroundImage: AssetImage('assets/naruto.jpg'),
//                  radius: 50.0,
//                ),
//              ),
//            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/naruto.jpg'),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 80.0,
              color: Colors.grey[900],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0), //sama mcm <br>
            Text(
              'Naruto',
              style: TextStyle(
                color: Colors.orangeAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0), // sama mcm <br>
            Text(
              'CURRENT FLUTTER LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0), //sama mcm <br>
            Text(
              '$levelDescription ($flutterLevel)',
              style: TextStyle(
                color: Colors.orangeAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0), //sama mcm <br>0
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0), //sama mcm <br>0
                Text(
                  'naruto@gmail.com',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            )
          ],
        ),
      ),

    );
  }
}



