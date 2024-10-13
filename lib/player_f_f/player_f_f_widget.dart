import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'player_f_f_model.dart';
export 'player_f_f_model.dart';

class PlayerFFWidget extends StatefulWidget {
  /// Página criada somente para adicionar o player do flutterflow e habilitar
  /// que ele rode em backgroud. Com isso é adicionado automaticamente a
  /// permissão para rodar o aplicativo em backgroud. No dia de hoje, não é
  /// possível adicionar isso a não ser baixando o código do projeto.
  const PlayerFFWidget({super.key});

  @override
  State<PlayerFFWidget> createState() => _PlayerFFWidgetState();
}

class _PlayerFFWidgetState extends State<PlayerFFWidget> {
  late PlayerFFModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlayerFFModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            FFLocalizations.of(context).getText(
              'qwdplf09' /* Player */,
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 24.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  FFLocalizations.of(context).getText(
                    's6c7ykar' /* Página criada somente para adi... */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        letterSpacing: 0.0,
                      ),
                ),
                FlutterFlowAudioPlayer(
                  audio: Audio.network(
                    'https://filesamples.com/samples/audio/mp3/sample3.mp3',
                    metas: Metas(
                      id: 'sample3.mp3-516cbf2d',
                    ),
                  ),
                  titleTextStyle:
                      FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.0,
                          ),
                  playbackDurationTextStyle:
                      FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.0,
                          ),
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  playbackButtonColor: FlutterFlowTheme.of(context).primary,
                  activeTrackColor: FlutterFlowTheme.of(context).alternate,
                  elevation: 4.0,
                  playInBackground: PlayInBackground.enabled,
                ),
              ].divide(const SizedBox(height: 24.0)),
            ),
          ),
        ),
      ),
    );
  }
}
