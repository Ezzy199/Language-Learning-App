import 'package:audioplayers/audioplayers.dart';

class SoundPlayer{
 
 Future<void> playSound(String sound) async{
                
    final player = AudioPlayer();
   await player.play(AssetSource(sound));
   
   
 }



}