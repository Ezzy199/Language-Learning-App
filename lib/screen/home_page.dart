import 'package:flutter/material.dart';
import 'package:toku/components/category_item.dart';
import 'package:toku/screen/Phrases_page.dart';
import 'package:toku/screen/color_model.dart';

import 'package:toku/screen/numbers_page.dart';

import 'family_members.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFCE5),
      appBar: AppBar(
        backgroundColor: const Color(0xff4A322B),
        title: const Text('Toku'),
      ),
      body: Column(

        children: [
          
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const NumbersPage();
              }));
            },
            text: 'Numbers',
            color: const Color(0xffef9235),
          ),
           Category(
             onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const FamilyMembers();
              }));
            },
            text: 'Family Members',
            color: const Color(0xff558b37),
          ),
           Category(
             onTap: () {
               Navigator.push(context,
                   MaterialPageRoute(builder: (BuildContext context) {
                     return const ColorModel ();
                   }));
             },
            text: 'Colors',
            color: Color(0xff79359f),
          ),
            Category(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return const PhrasesPage ();
                    }));
              },
            text: 'Phrases',
            color: Color(0xff50adc7),
          ),
        ],
      ),
    );
  }
}
