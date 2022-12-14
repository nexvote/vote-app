//DISPLAYING THE PRESIDENTIAL CANDIDATES FOR ACES

import 'package:flutter/material.dart';

class President extends StatefulWidget {
  const President({Key? key}) : super(key: key);

  @override
  State<President> createState() => _PresidentState();
}

class _PresidentState extends State<President> {
  int selectedValue = 4;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 16),
        children: [
          const SizedBox(height: 50),

          //1ST
          Container(
            decoration: const BoxDecoration(color: Color(0xffEDD9DB)),
            child: RadioListTile(
              value: 0,
              groupValue: selectedValue,
              title: Text(
                'Rexford Machu',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Lets do this!'),
              secondary: ClipRRect(
                borderRadius: BorderRadius.circular(27),
                child: Image.asset('assets/images/president1.jpeg'),
              ),
              onChanged: (int? value) {
                setState(() {
                  selectedValue = value!;
                });
              },
            ),
          ),
          const SizedBox(height: 20),

          //2ND
          Container(
            decoration: const BoxDecoration(color: Color(0xffEDD9DB)),
            child: RadioListTile(
              value: 1,
              groupValue: selectedValue,
              title: Text(
                'Marcel Nortey',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Of course we can!'),
              secondary: ClipRRect(
                borderRadius: BorderRadius.circular(27),
                child: Image.asset('assets/images/president2.jpeg'),
              ),
              onChanged: (int? value) {
                setState(() {
                  selectedValue = value!;
                });
              },
            ),
          ),
          const SizedBox(height: 20),

          //3RD
          Container(
            decoration: const BoxDecoration(color: Color(0xffEDD9DB)),
            child: RadioListTile(
              value: 2,
              groupValue: selectedValue,
              title: Text(
                'Jeffrey Ofori Kwakye',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('I did it!'),
              secondary: ClipRRect(
                borderRadius: BorderRadius.circular(27),
                child: Image.asset('assets/images/mypic.JPG'),
              ),
              onChanged: (int? value) {
                setState(() {
                  selectedValue = value!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
