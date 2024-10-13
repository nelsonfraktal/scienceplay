import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'component_moedas_do_usuario_model.dart';
export 'component_moedas_do_usuario_model.dart';

class ComponentMoedasDoUsuarioWidget extends StatefulWidget {
  const ComponentMoedasDoUsuarioWidget({
    super.key,
    this.tabInAchivements,
  });

  final int? tabInAchivements;

  @override
  State<ComponentMoedasDoUsuarioWidget> createState() =>
      _ComponentMoedasDoUsuarioWidgetState();
}

class _ComponentMoedasDoUsuarioWidgetState
    extends State<ComponentMoedasDoUsuarioWidget> {
  late ComponentMoedasDoUsuarioModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentMoedasDoUsuarioModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: FFAppState().queryMoedasDoUsuario(
        requestFn: () => ObjGroup.getUserUIDCall.call(
          constraints:
              '[{\"key\": \"_id\", \"constraint_type\": \"equals\", \"value\": \"$currentUserUid\"}]',
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 30.0,
              height: 30.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        final containerGetUserUIDResponse = snapshot.data!;

        return InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            if (widget.tabInAchivements != null) {
              context.pushNamed(
                'My_achievements',
                queryParameters: {
                  'tab': serializeParam(
                    widget.tabInAchivements,
                    ParamType.int,
                  ),
                }.withoutNulls,
              );
            } else {
              context.pushNamed('My_achievements');
            }
          },
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFFEEE7ED),
              borderRadius: BorderRadius.circular(56.0),
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 16.0, 10.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: SvgPicture.asset(
                      'assets/images/Creditos_science_play.svg',
                      width: 16.0,
                      height: 16.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    valueOrDefault<String>(
                      ObjGroup.getUserUIDCall
                          .credits(
                            containerGetUserUIDResponse.jsonBody,
                          )
                          ?.toString(),
                      '0',
                    ),
                    maxLines: 1,
                    style: GoogleFonts.getFont(
                      'Poppins',
                      color: const Color(0xFF383438),
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0,
                    ),
                  ),
                ].divide(const SizedBox(width: 8.0)),
              ),
            ),
          ),
        );
      },
    );
  }
}
