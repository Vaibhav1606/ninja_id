import 'package:flutter/material.dart';
void main()
{
  runApp(MaterialApp(
    home: NinjaCard(),
    theme: ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.pink,

    )
  ));
}
class NinjaCard extends StatefulWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  @override
  int count = 0;

  Widget build(BuildContext context) {
    var cyanAccentolo;
    return Scaffold(
      // backgroundColor: Colors.grey,
      appBar: AppBar(
        title: new Text("Ninja ID Card", style: TextStyle(
          fontSize: 20.0,
          color: Colors.white,
        ),),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          count += 1;
        });
      },
        child: Icon(Icons.add,
            color: Colors.yellowAccent,
            size: 25.0),),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Center(
              child:
              CircleAvatar(
                backgroundImage: AssetImage('assets/itachi_1.jpg'),
                radius: 40.0,
              ),),
            Divider(
              height: 90.0,
              color: Colors.grey[800],
            ),

            Text('NAME ', style: new TextStyle(
              color: Colors.red,
              letterSpacing: 2.0,
              fontSize: 15.0,
            ),),
            SizedBox(height: 10.0),
            Text('vaibhav Limkar ', style: new TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 30.0),
            Text('LEVEL ', style: new TextStyle(
              color: Colors.red,
              letterSpacing: 2.0,
              fontSize: 15.0,
            ),),
            SizedBox(height: 10.0),
             Text('$count', style: new TextStyle(
              color: Colors.white,
              letterSpacing: 2.0,
              fontSize: 25.0,
            ),),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  size: 25.0,
                  color: Colors.red,

                ),
                SizedBox(width: 10.0),

                Text(
                  'vaibhavlsks@gmaill.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                    fontSize: 20.0,

                  ),
                ),
              ],
            ),


          ],
        ),


      ),

    );
  }
}




