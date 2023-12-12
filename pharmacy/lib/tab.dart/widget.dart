import 'package:flutter/material.dart';

Widget set({icon, text}){
  return Padding(
    padding: const EdgeInsets.all(11.8),
    child: SizedBox(width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: (){}, 
        icon: icon,
         label:text,
         ),
    ),
  );
}


captiontext(context, {required text, required}) {
  return Padding(
    padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.width * 0.01),
    child: Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.040),
    ),
  );
}


Widget WTextformFeild(context, {required label, required hint, controller}) {
  return Padding(
    padding: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.04),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        captiontext(
          context,
          text: label,
        ),
        SizedBox(height: MediaQuery.of(context).size.width * .01),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 16, 105, 140))),
                  hintText: hint,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))))),
        )
      ],
    ),
  );
}


Widget Healthcare() {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.all(8),
        width: double.infinity,
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 250,
              height: 200,
              color: Colors.black,
              child: Image(
                image: AssetImage('assets/health1.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              child: Container(
                color: Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(8, 0, 0, 4),
                        // color: Colors.yellow,
                        child: Image(
                          image: AssetImage('assets/health2.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(8, 4, 0, 0),
                        color: const Color.fromARGB(255, 52, 51, 42),
                        child:
                            Image(image: AssetImage('assets/health4.png')),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ],
  );
}