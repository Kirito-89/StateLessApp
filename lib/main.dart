import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Ninja(),
));

class Ninja extends StatefulWidget {
  const Ninja({super.key});

  @override
  State<Ninja> createState() => _NinjaState();
}

class _NinjaState extends State<Ninja> {
  int ninjalevel=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          'Ninja Id card',
          style: TextStyle(
            color: Colors.white, // Change the color here
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjalevel++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/yandre.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              "NAME",
              style: TextStyle(
                color:Colors.grey,
                letterSpacing:2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              "Adamya Verma",
              style: TextStyle(
                color:Colors.amberAccent[200],
                letterSpacing:2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              "CURRENT NINJA LEVEL",
              style: TextStyle(
                color:Colors.grey,
                letterSpacing:2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              '${ninjalevel}',
              style: TextStyle(
                color:Colors.amberAccent[200],
                letterSpacing:2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color:Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  'adamyaverma1310@gmail.com',
                  style: TextStyle(
                      color:Colors.grey[400],
                      fontSize:10.0,
                      letterSpacing:2.0
                  ),

                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class text extends StatefulWidget {
  const text({super.key});

  @override
  State<text> createState() => _textState();
}

class _textState extends State<text> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

