import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Page'),
      ),
      body: Center(),
    );
  }
}

//回傳bar的item
class Friends extends StatelessWidget {
  final String name;
  const Friends(this.name);

  @override
  Widget build(BuildContext context){

    return DecoratedBox(

      decoration:
      new BoxDecoration(
        color: Color(0xFFFF355d5c),
        border: Border(
            bottom: BorderSide(width: 1.0, color: Color(0xFFFFe5fbef))
        ),
      ),

      child: Container(

          padding: const EdgeInsets.all(10.0),
          width: 414,
          height: 100,
          child:

          new GestureDetector(
            onTap: () {

              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegisterPage()));
            },
            // Our Custom Button!
            child: Container(
              padding: const EdgeInsets.all(10.0),
              width: 414,
              height: 100,
              child: Text(
                name,
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.deepOrange
                ),
              ),
            ),
          )

        // Text(
        //   name,
        //   style: TextStyle(
        //       fontSize: 24.0,
        //       fontWeight: FontWeight.w700,
        //       color: Colors.white
        //   ),
        // ),


      ),
    );
  }
}


