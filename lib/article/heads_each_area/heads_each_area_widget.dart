import '/componentes_globais/component_voltar/component_voltar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'heads_each_area_model.dart';
export 'heads_each_area_model.dart';

class HeadsEachAreaWidget extends StatefulWidget {
  const HeadsEachAreaWidget({
    super.key,
    this.authors,
  });

  final List<dynamic>? authors;

  @override
  State<HeadsEachAreaWidget> createState() => _HeadsEachAreaWidgetState();
}

class _HeadsEachAreaWidgetState extends State<HeadsEachAreaWidget> {
  late HeadsEachAreaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeadsEachAreaModel());
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
        backgroundColor: const Color(0xFFFAFAFA),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: wrapWithModel(
                          model: _model.componentVoltarModel,
                          updateCallback: () => safeSetState(() {}),
                          child: const ComponentVoltarWidget(),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          FFLocalizations.of(context).getText(
                            '60az9bpt' /* Specialists */,
                          ),
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Poppins',
                                    color: const Color(0xFF2B282B),
                                    fontSize: 19.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ].divide(const SizedBox(width: 8.0)),
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  decoration: const BoxDecoration(),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 24.0),
                    child: Builder(
                      builder: (context) {
                        final author = widget.authors?.toList() ?? [];

                        return Wrap(
                          spacing: 0.0,
                          runSpacing: 24.0,
                          alignment: WrapAlignment.center,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          direction: Axis.horizontal,
                          runAlignment: WrapAlignment.start,
                          verticalDirection: VerticalDirection.down,
                          clipBehavior: Clip.none,
                          children: List.generate(author.length, (authorIndex) {
                            final authorItem = author[authorIndex];
                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'About_author',
                                  queryParameters: {
                                    'author': serializeParam(
                                      authorItem,
                                      ParamType.JSON,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                decoration: const BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (!((String var1) {
                                      return var1.contains('empty:');
                                    }(getJsonField(
                                      authorItem,
                                      r'''$.photo''',
                                    ).toString())))
                                      Container(
                                        width: 90.0,
                                        height: 90.0,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Image.network(
                                          getJsonField(
                                            authorItem,
                                            r'''$.photo''',
                                          ).toString(),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    if ((String var1) {
                                      return var1.contains('empty:');
                                    }(getJsonField(
                                      authorItem,
                                      r'''$.photo''',
                                    ).toString()))
                                      Container(
                                        width: 90.0,
                                        height: 90.0,
                                        decoration: const BoxDecoration(
                                          color: Color(0xFF808080),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Text(
                                            (String var1) {
                                              return var1.split(':')[1];
                                            }(getJsonField(
                                              authorItem,
                                              r'''$.photo''',
                                            ).toString()),
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  fontSize: 36.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                      ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 0.0),
                                      child: Text(
                                        getJsonField(
                                          authorItem,
                                          r'''$.name''',
                                        ).toString(),
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: const Color(0xFF6A646B),
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                    if (getJsonField(
                                          authorItem,
                                          r'''$.degree''',
                                        ) !=
                                        null)
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 4.0, 0.0, 0.0),
                                        child: Text(
                                          getJsonField(
                                            authorItem,
                                            r'''$.degree''',
                                          ).toString(),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodySmall
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: const Color(0xFF6A646B),
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            );
                          }),
                        );
                      },
                    ),
                  ),
                ),
              ]
                  .addToStart(const SizedBox(height: 24.0))
                  .addToEnd(const SizedBox(height: 24.0)),
            ),
          ),
        ),
      ),
    );
  }
}
