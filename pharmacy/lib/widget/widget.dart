// ignore_for_file: unused_element

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


Widget wTextformFeild(context, {required label, required hint, controller}) {
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
                  focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 16, 105, 140))),
                  hintText: hint,
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))))),
        )
      ],
    ),
  );
}


Widget healthcare() {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.all(8),
        width: double.infinity,
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 250,
              height: 200,
              color: Colors.black,
              child: const Image(
                image: AssetImage('assets/health1.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              child: Container(
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(8, 0, 0, 4),
                        // color: Colors.yellow,
                        child: const Image(
                          image: AssetImage('assets/health2.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(8, 4, 0, 0),
                        color: const Color.fromARGB(255, 52, 51, 42),
                        child:
                            const Image(image: AssetImage('assets/health4.png')),
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



  Widget _buildFeature(String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: RichText(
        text: TextSpan(
          style: const TextStyle(fontSize: 16.0, color: Colors.black),
          children: [
            TextSpan(
              text: '$title\n',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(text: description),
          ],
        ),
      ),
    );
  }

  Widget _buildContactInfo(String info) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Text(info, style: const TextStyle(fontSize: 16.0)),
    );
  }

