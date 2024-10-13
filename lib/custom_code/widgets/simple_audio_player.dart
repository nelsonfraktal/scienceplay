// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:audio_session/audio_session.dart';
import 'package:rxdart/rxdart.dart';

class SimpleAudioPlayer extends StatefulWidget {
  const SimpleAudioPlayer({
    super.key,
    this.width,
    this.height,
    required this.audioUrl,
    required this.title,
    required this.journal,
    required this.coverImage,
    required this.callbackNotes,
    required this.callbackShare,
    required this.callbackAudioFinish,
  });

  final double? width;
  final double? height;
  final String audioUrl;
  final String title;
  final String journal;
  final String coverImage;
  final Future Function() callbackNotes;
  final Future Function() callbackShare;
  final Future Function() callbackAudioFinish;

  @override
  State<SimpleAudioPlayer> createState() => _SimpleAudioPlayerState();
}

class _SimpleAudioPlayerState extends State<SimpleAudioPlayer> {
  late AudioPlayer _player;
  bool audioFinished = false;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  Future<void> _initializePlayer() async {
    _player = AudioPlayer();

    final session = await AudioSession.instance;
    await session.configure(AudioSessionConfiguration.music());

    _player.playbackEventStream.listen((event) {},
        onError: (Object e, StackTrace stackTrace) {
      print('A stream error occurred: $e');
    });

    try {
      await _player.setAudioSource(AudioSource.uri(
        Uri.parse(widget.audioUrl),
        tag: MediaItem(
          id: 'audio_1',
          title: widget.title,
          artist: widget.journal,
          artUri: Uri.parse(widget.coverImage),
        ),
      ));

      _player.play();
    } catch (e) {
      print("Error loading audio source: $e");
    }
  }

  @override
  void dispose() {
    _player.stop();
    _player.dispose();
    super.dispose();
  }

  Stream<PositionData> get _positionDataStream =>
      Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
          _player.positionStream,
          _player.bufferedPositionStream,
          _player.durationStream,
          (position, bufferedPosition, duration) => PositionData(
              position, bufferedPosition, duration ?? Duration.zero));

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StreamBuilder<PositionData>(
          stream: _positionDataStream,
          builder: (context, snapshot) {
            final positionData = snapshot.data;
            final currentPosition = positionData?.position ?? Duration.zero;
            final totalDuration = positionData?.duration ?? Duration.zero;

            return Column(
              children: [
                SeekBar(
                  duration: totalDuration,
                  position: currentPosition,
                  bufferedPosition:
                      positionData?.bufferedPosition ?? Duration.zero,
                  onChangeEnd: (newPosition) {
                    _player.seek(newPosition);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Texto do tempo atual do áudio
                      Text(
                        _formatDuration(currentPosition),
                        style: TextStyle(
                          color: Color(0xFF6A646B),
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                        ),
                      ),
                      // Texto do tempo total do áudio
                      Text(
                        _formatDuration(totalDuration),
                        style: TextStyle(
                          color: Color(0xFF6A646B),
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
        ControlButtons(_player),
        SizedBox(height: 0),
        PlaybackSpeedControl(
          _player,
          callbackNotes: widget.callbackNotes,
          callbackShare: widget.callbackShare,
        ),
        StreamBuilder<PlayerState>(
          stream: _player.playerStateStream,
          builder: (context, snapshot) {
            final playerState = snapshot.data;
            final processingState = playerState?.processingState;
            if (processingState == ProcessingState.completed &&
                !audioFinished) {
              widget.callbackAudioFinish();
              audioFinished = true;
            }
            return SizedBox.shrink();
          },
        ),
      ],
    );
  }

// Função auxiliar para formatar a duração
  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$minutes:$seconds';
  }
}

class ControlButtons extends StatelessWidget {
  final AudioPlayer player;

  ControlButtons(this.player);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(Icons.skip_previous_rounded),
          onPressed: player.hasPrevious ? player.seekToPrevious : null,
          iconSize: 40,
          color: Color(0xFF514C52),
        ),
        IconButton(
          icon: Icon(Icons.replay_10_rounded),
          onPressed: () {
            final newPosition = player.position - Duration(seconds: 10);
            player.seek(
                newPosition < Duration.zero ? Duration.zero : newPosition);
          },
          iconSize: 40,
          color: Color(0xFF514C52),
        ),
        StreamBuilder<PlayerState>(
          stream: player.playerStateStream,
          builder: (context, snapshot) {
            final playerState = snapshot.data;
            final processingState = playerState?.processingState;
            final playing = playerState?.playing;
            //if (processingState == ProcessingState.loading ||
            //processingState == ProcessingState.buffering) {
            //return SizedBox.shrink();
            //} else
            if (playing != true) {
              return Container(
                decoration: BoxDecoration(
                  color: Color(0xFF514C52),
                  borderRadius: BorderRadius.circular(200),
                ),
                child: IconButton(
                  icon: Icon(Icons.play_arrow_rounded),
                  iconSize: 64.0,
                  onPressed: player.play,
                  color: Colors.white,
                ),
              );
            } else if (processingState != ProcessingState.completed) {
              return Container(
                decoration: BoxDecoration(
                  color: Color(0xFF514C52),
                  borderRadius: BorderRadius.circular(200),
                ),
                child: IconButton(
                  icon: Icon(Icons.pause_rounded),
                  iconSize: 64.0,
                  color: Colors.white,
                  onPressed: player.pause,
                ),
              );
            } else {
              return Container(
                decoration: BoxDecoration(
                  color: Color(0xFF514C52),
                  borderRadius: BorderRadius.circular(200),
                ),
                child: IconButton(
                  icon: Icon(Icons.replay_rounded),
                  iconSize: 64.0,
                  color: Colors.white,
                  onPressed: () => player.seek(Duration.zero,
                      index: player.effectiveIndices!.first),
                ),
              );
            }
          },
        ),
        IconButton(
          icon: Icon(Icons.forward_10_rounded),
          onPressed: () {
            final newPosition = player.position + Duration(seconds: 10);
            player.seek(newPosition > player.duration!
                ? player.duration!
                : newPosition);
          },
          iconSize: 40,
          color: Color(0xFF514C52),
        ),
        IconButton(
          icon: Icon(Icons.skip_next_rounded),
          onPressed: player.hasNext ? player.seekToNext : null,
          iconSize: 40,
          color: Color(0xFF514C52),
        ),
      ],
    );
  }
}

class PlaybackSpeedControl extends StatefulWidget {
  final AudioPlayer player;
  final Future Function() callbackNotes;
  final Future Function() callbackShare;

  PlaybackSpeedControl(this.player,
      {required this.callbackNotes, required this.callbackShare});

  @override
  _PlaybackSpeedControlState createState() => _PlaybackSpeedControlState();
}

class _PlaybackSpeedControlState extends State<PlaybackSpeedControl> {
  double playbackRate = 1.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24), // Adiciona padding ao container
      child: Container(
        width: double.infinity,
        height: 48,
        decoration: BoxDecoration(
          color: Color(0xFFEEE7ED),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                // Incrementa a velocidade do playback
                setState(() {
                  playbackRate = playbackRate >= 2.0 ? 0.5 : playbackRate + 0.5;
                });
                widget.player.setSpeed(playbackRate);
              },
              style: TextButton.styleFrom(
                foregroundColor: Color(0xFF6A646B),
                textStyle: TextStyle(
                  fontSize: 14, // Tamanho da fonte
                  fontWeight: FontWeight.w600, // Peso da fonte
                ),
              ),
              child: Text('${playbackRate.toStringAsFixed(1)}x'),
            ),
            SizedBox(width: 48), // Espaçamento de 48px entre os ícones
            IconButton(
              icon: Icon(Icons.create_outlined),
              onPressed: () async {
                Duration currentPosition = widget.player.position;

                String formattedDuration = _formatDuration(currentPosition);

                FFAppState().update(() {
                  FFAppState().currentDuration = formattedDuration;
                });
                await widget.callbackNotes();
              },
            ),
            SizedBox(width: 48),
            IconButton(
              icon: Icon(Icons.share_outlined),
              onPressed: () async {
                await widget.callbackShare();
              },
            ),
          ],
        ),
      ),
    );
  }
}

String _formatDuration(Duration duration) {
  String twoDigits(int n) => n.toString().padLeft(2, '0');
  final minutes = twoDigits(duration.inMinutes.remainder(60));
  final seconds = twoDigits(duration.inSeconds.remainder(60));

  return '$minutes:$seconds'; // Retorna no formato "mm:ss"
}

class PositionData {
  final Duration position;
  final Duration bufferedPosition;
  final Duration duration;

  PositionData(this.position, this.bufferedPosition, this.duration);
}

class SeekBar extends StatefulWidget {
  final Duration duration;
  final Duration position;
  final Duration bufferedPosition;
  final ValueChanged<Duration>? onChanged;
  final ValueChanged<Duration>? onChangeEnd;

  SeekBar({
    required this.duration,
    required this.position,
    required this.bufferedPosition,
    this.onChanged,
    this.onChangeEnd,
  });

  @override
  _SeekBarState createState() => _SeekBarState();
}

class _SeekBarState extends State<SeekBar> {
  double? _dragValue;

  @override
  Widget build(BuildContext context) {
    return Slider(
      min: 0.0,
      max: widget.duration.inMilliseconds.toDouble(),
      value: _dragValue ?? widget.position.inMilliseconds.toDouble(),
      activeColor: Color(0xFF6A646B),
      inactiveColor: Color(0xFFD1CDD1),
      onChanged: (value) {
        setState(() {
          _dragValue = value;
        });
        if (widget.onChanged != null) {
          widget.onChanged!(Duration(milliseconds: value.round()));
        }
      },
      onChangeEnd: (value) {
        if (widget.onChangeEnd != null) {
          widget.onChangeEnd!(Duration(milliseconds: value.round()));
        }
        _dragValue = null;
      },
    );
  }
}
// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
