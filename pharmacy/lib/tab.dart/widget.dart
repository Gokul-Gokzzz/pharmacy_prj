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

