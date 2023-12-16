import 'package:flutter/material.dart';
import 'package:toku/components/item.dart';

import '../components/phrases_item.dart';
import '../models/number.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<ItemModel> PhrasesList = const [
    ItemModel(
      sound: 'sounds/phrases/what_is_your_name.wav',
      image: 'assets/images/colors/color_black.png',
      jpName: 'Anata no namae wa nandesuka',
      enName: 'What is your name',
    ),
    ItemModel(
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
      image: 'assets/images/colors/color_brown.png',
      jpName: 'Wasurezu ni kōdoku shite kudasai',
      enName: 'Dont forget to subscribe',
    ),
    ItemModel(
      sound: 'sounds/phrases/how_are_you_feeling.wav',
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'Go kibun wa ikagadesu ka',
      enName: 'How are you feeling',
    ),
    ItemModel(
      sound: 'sounds/phrases/i_love_anime.wav',
      image: 'assets/images/colors/color_gray.png',
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'I love anime',
    ),
    ItemModel(
      sound: 'sounds/phrases/i_love_programming.wav',
      image: 'assets/images/colors/color_green.png',
      jpName: 'Puroguramingu ga daisukidesu',
      enName: 'I love programming',
    ),
    ItemModel(
      sound: 'sounds/phrases/programming_is_easy.wav',
      image: 'assets/images/colors/color_red.png',
      jpName: 'Puroguramingu wa kantandesu',
      enName: 'Programming is easy',
    ),
    ItemModel(
      sound: 'sounds/phrases/are_you_coming.wav',
      image: 'images/colors/color_white.png',
      jpName: 'Kimasu ka',
      enName: 'Are you coming',
    ),
    ItemModel(
      sound: 'sounds/phrases/where_are_you_going.wav',
      image: 'assets/images/colors/yellow.png',
      jpName: 'Doko ni iku no',
      enName: 'Where are you going',
    ),
    ItemModel(
      sound: 'sounds/phrases/yes_im_coming.wav',
      image: 'assets/images/colors/yellow.png',
      jpName: 'Hai, kimasu',
      enName: 'Yes im coming',
    ),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Phrases'),
          backgroundColor: const Color(0xff4A322B),
        ),
        body: ListView.builder(
          itemCount: PhrasesList.length,
          itemBuilder: (context, index) {
            return PhrasesItem(
              item: PhrasesList[index],
              color: const Color(0xff50adc7),
            );
          },
        ));
  }

// List<Widget> getList(List<Number> numbers) {
//   List<Widget> itemList = [];
//   for (int i = 0; i < numbers.length; i++) {
//     itemList.add(Item(number: numbers[i]));
//   }
//   return itemList;
// }
}
