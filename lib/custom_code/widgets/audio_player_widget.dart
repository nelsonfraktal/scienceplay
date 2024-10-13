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

import 'package:audio_session/audio_session.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart';
import 'package:audio_service/audio_service.dart';
import 'package:just_audio_background/just_audio_background.dart';

class AudioPlayerWidget extends StatefulWidget {
  const AudioPlayerWidget({
    super.key,
    this.width,
    this.height,
    this.audioUrl,
    required this.shareClicked,
    required this.audioFinished,
  });

  final double? width;
  final double? height;
  final String? audioUrl;
  final Future<dynamic> Function() shareClicked;
  final Future<dynamic> Function() audioFinished;

  @override
  _AudioPlayerWidgetState createState() => _AudioPlayerWidgetState();
}

class _AudioPlayerWidgetState extends State<AudioPlayerWidget>
    with WidgetsBindingObserver {
  late final AudioPlayer _player;

  @override
  void initState() {
    super.initState();
    ambiguate(WidgetsBinding.instance)!.addObserver(this);
    _player = AudioPlayer();
    _init();
  }

  @override
  void didUpdateWidget(covariant AudioPlayerWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    // Recarrega o áudio se a URL mudar
    if (widget.audioUrl != oldWidget.audioUrl) {
      _init();
    }
  }

  Future<void> _init() async {
    // Initialize JustAudioBackground
    await JustAudioBackground.init(
      androidNotificationChannelId: 'com.example.myapp.channel.audio',
      androidNotificationChannelName: 'Audio playback',
      androidNotificationOngoing: true,
    );

    // Inform the operating system of our app's audio attributes etc.
    // We pick a reasonable default for an app that plays speech.
    final session = await AudioSession.instance;
    await session.configure(const AudioSessionConfiguration.speech());

    // Listen to errors during playback.
    _player.playbackEventStream.listen((event) {},
        onError: (Object e, StackTrace stackTrace) {
      print('A stream error occurred: $e');
    });

    // Load the audio source and handle errors
    try {
      if (widget.audioUrl != null) {
        await _player.setAudioSource(AudioSource.uri(
          Uri.parse(widget.audioUrl!),
          tag: MediaItem(
            id: widget.audioUrl!,
            title: 'Audio Title',
            artist: 'Artist Name',
            album: 'Album Name',
            artUri: Uri.parse('https://example.com/album_art.jpg'),
          ),
        ));
      }

      // Add listener for playback state changes
      _player.playerStateStream.listen((state) {
        if (state.processingState == ProcessingState.completed) {
          // Audio finished, trigger the action
          widget.audioFinished();
          print('Audio finished.');
        }
      });
    } on PlayerException catch (e) {
      print("Error loading audio source: $e");
    }
  }

  @override
  void dispose() {
    ambiguate(WidgetsBinding.instance)!.removeObserver(this);
    // Release decoders and buffers back to the operating system making them
    // available for other apps to use.
    _player.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      // Release the player's resources when not in use. We use "stop" so that
      // if the app resumes later, it will still remember what position to
      // resume from.
      //_player.stop();
    }
  }

  /// Collects the data useful for displaying in a seek bar, using a handy
  /// feature of rx_dart to combine the 3 streams of interest into one.
  Stream<PositionData> get _positionDataStream =>
      Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
          _player.positionStream,
          _player.bufferedPositionStream,
          _player.durationStream,
          (position, bufferedPosition, duration) => PositionData(
              position, bufferedPosition, duration ?? Duration.zero));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Display seek bar. Using StreamBuilder, this widget rebuilds
              // each time the position, buffered position or duration changes.
              StreamBuilder<PositionData>(
                stream: _positionDataStream,
                builder: (context, snapshot) {
                  final positionData = snapshot.data;
                  return SeekBar(
                    duration: positionData?.duration ?? Duration.zero,
                    position: positionData?.position ?? Duration.zero,
                    bufferedPosition:
                        positionData?.bufferedPosition ?? Duration.zero,
                    onChangeEnd: _player.seek,
                  );
                },
              ),
              // Display play/pause button and volume/speed sliders.
              ControlButtons(
                _player,
                shareClicked: widget.shareClicked,
              )
            ],
          ),
        ),
      ),
    );
  }
}

/// Displays the play/pause button, back/forward e back/forward 30 sec buttons.
class ControlButtons extends StatelessWidget {
  final AudioPlayer player;
  final Future<void> Function() shareClicked;

  const ControlButtons(this.player, {Key? key, required this.shareClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:
          MainAxisAlignment.center, // Centraliza a Row verticalmente
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(Icons.replay_30),
              iconSize: 40.0,
              onPressed: () {
                final currentPosition = player.position;
                if (currentPosition.inSeconds < 30) {
                  player.seek(Duration.zero);
                } else {
                  player.seek(currentPosition - Duration(seconds: 30));
                }
              },
            ),
            StreamBuilder<PlayerState>(
              stream: player.playerStateStream,
              builder: (context, snapshot) {
                final playerState = snapshot.data;
                final processingState = playerState?.processingState;
                final playing = playerState?.playing;
                if (playing != true) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF514C52),
                      borderRadius: BorderRadius.circular(200),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.play_arrow),
                      iconSize: 64.0,
                      color: Colors.white,
                      onPressed: player.play,
                    ),
                  );
                } else if (processingState != ProcessingState.completed) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF514C52),
                      borderRadius: BorderRadius.circular(200),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.pause),
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
                      icon: const Icon(Icons.replay),
                      iconSize: 64.0,
                      color: Colors.white,
                      onPressed: () => player.seek(Duration.zero),
                    ),
                  );
                }
              },
            ),
            IconButton(
              icon: const Icon(Icons.forward_30),
              iconSize: 40.0,
              onPressed: () {
                final currentPosition = player.position;
                player.seek(currentPosition + Duration(seconds: 30));
              },
            ),
          ],
        ),
        SizedBox(height: 24), // Adiciona espaço entre as rows
        Container(
          width: double.infinity,
          height: 48,
          decoration: BoxDecoration(
            color: Color(0xFFEEE7ED),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StreamBuilder<double>(
                stream: player.speedStream,
                builder: (context, snapshot) => IconButton(
                  icon: Text(
                    "${snapshot.data?.toStringAsFixed(1)}x",
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 14.0),
                  ),
                  onPressed: () {
                    double currentSpeed = player.speed;
                    double newSpeed = currentSpeed + 0.5;
                    if (newSpeed > 2.0) {
                      newSpeed = 0.5;
                    }
                    player.setSpeed(newSpeed);
                  },
                ),
              ),
              SizedBox(width: 48), // Espaçamento de 48px entre os ícones
              IconButton(
                icon: Icon(Icons.create_outlined),
                onPressed: () {},
              ),
              SizedBox(width: 48),
              IconButton(
                icon: Icon(Icons.share_outlined),
                onPressed: () {
                  shareClicked();
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SeekBar extends StatefulWidget {
  final Duration duration;
  final Duration position;
  final Duration bufferedPosition;
  final ValueChanged<Duration>? onChanged;
  final ValueChanged<Duration>? onChangeEnd;

  const SeekBar({
    Key? key,
    required this.duration,
    required this.position,
    required this.bufferedPosition,
    this.onChanged,
    this.onChangeEnd,
  }) : super(key: key);

  @override
  SeekBarState createState() => SeekBarState();
}

class SeekBarState extends State<SeekBar> {
  double? _dragValue;
  late SliderThemeData _sliderThemeData;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _sliderThemeData = SliderTheme.of(context)
        .copyWith(trackHeight: 4, thumbColor: Color(0xFF6A646B));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SliderTheme(
          data: _sliderThemeData.copyWith(
            inactiveTrackColor: Color(0xFFD1CDD1),
            activeTrackColor: Color(0xFF6A646B),
          ),
          child: Slider(
            min: 0.0,
            max: widget.duration.inMilliseconds.toDouble(),
            value: min(_dragValue ?? widget.position.inMilliseconds.toDouble(),
                widget.duration.inMilliseconds.toDouble()),
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
          ),
        ),
        Positioned(
          right: 0.0,
          bottom: 0.0,
          child: Text(
            RegExp(r'((^0*[1-9]\d*:)?\d{2}:\d{2})\.\d+$')
                    .firstMatch("$_total")
                    ?.group(1) ??
                '$_total',
            style: TextStyle(
              fontSize: 10.0,
              fontWeight: FontWeight.w700,
              color: Color(0xFF6A646B),
            ),
          ),
        ),
        Positioned(
          left: 0.0,
          bottom: 0.0,
          child: Text(
            RegExp(r'((^0*[1-9]\d*:)?\d{2}:\d{2})\.\d+$')
                    .firstMatch("$_remaining")
                    ?.group(1) ??
                '$_remaining',
            style: TextStyle(
              fontSize: 10.0,
              fontWeight: FontWeight.w700,
              color: Color(0xFF6A646B),
            ),
          ),
        ),
      ],
    );
  }

  Duration get _total => widget.duration;
  Duration get _remaining => widget.position;
}

class PositionData {
  final Duration position;
  final Duration bufferedPosition;
  final Duration duration;

  PositionData(this.position, this.bufferedPosition, this.duration);
}

T? ambiguate<T>(T? value) => value;
