import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:music_notes_player_app_setup/Classes/Tuneclass.dart';

class TuneWidget extends StatelessWidget {
  const TuneWidget(this.tune, {super.key});
  final Tune tune;

  @override
  Widget build(BuildContext context) {
    // expanded fooook
    return Expanded(
      child: GestureDetector(
        onTap: () {
          final player = AudioPlayer();
          player.setSource(AssetSource(tune.tunes));
        },
        child: Container(
          color: tune.color,
        ),
      ),
    );
  }
}

