import 'package:flutter/material.dart';

class SupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Support'),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Support',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 17,),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:80.0),
                  child: FlatButton.icon(
                    icon: Icon(Icons.call, color: Colors.green[300],size: 15.0,),
                    label: Text('0747585100', style: TextStyle(color: Colors.green[300], fontSize: 15.0),),
                    onPressed: (){},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:80.0),
                  child: FlatButton.icon(
                    icon: Icon(Icons.call, color: Colors.green[300],size: 15.0,),
                    label: Text('0208405100', style: TextStyle(color: Colors.green[300], fontSize: 15.0),),
                    onPressed: (){},
                  ),
                ),
              ],
            ),
            FlatButton.icon(
              icon: Icon(
                Icons.mail_outline_outlined, 
                color: Colors.green[300],
                size: 20.0,
              ),
              label: Text(
                'CSC@JTL.CO.KE', 
                style: TextStyle(color: Colors.green[300], fontSize: 15.0),
              ),
              onPressed: (){},
            ),
          ],
        ),
      ),
    );
  }
}