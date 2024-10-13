import '/backend/api_requests/api_calls.dart';
import '/componentes_globais/component_voltar_baixo/component_voltar_baixo_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'select_country_region_model.dart';
export 'select_country_region_model.dart';

class SelectCountryRegionWidget extends StatefulWidget {
  const SelectCountryRegionWidget({super.key});

  @override
  State<SelectCountryRegionWidget> createState() =>
      _SelectCountryRegionWidgetState();
}

class _SelectCountryRegionWidgetState extends State<SelectCountryRegionWidget> {
  late SelectCountryRegionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectCountryRegionModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 5.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Container(
        width: double.infinity,
        constraints: const BoxConstraints(
          maxHeight: 744.0,
        ),
        decoration: const BoxDecoration(
          color: Color(0xFFFAFAFA),
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0x00000040),
              offset: Offset(
                0.0,
                0.0,
              ),
            )
          ],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(16.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.componentVoltarBaixoModel,
                    updateCallback: () => safeSetState(() {}),
                    child: ComponentVoltarBaixoWidget(
                      customAction: () async {},
                    ),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'emzo40eg' /* Select a country/region */,
                    ),
                    style: GoogleFonts.getFont(
                      'Poppins',
                      color: const Color(0xFF14181B),
                      fontWeight: FontWeight.w600,
                      fontSize: 19.0,
                    ),
                  ),
                ].divide(const SizedBox(width: 8.0)),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 32.0),
                child: FutureBuilder<ApiCallResponse>(
                  future: CountryCodesCall.call(),
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
                    final listViewCountryCodesResponse = snapshot.data!;

                    return Builder(
                      builder: (context) {
                        final cc =
                            listViewCountryCodesResponse.jsonBody.toList();

                        return ListView.separated(
                          padding: const EdgeInsets.fromLTRB(
                            0,
                            16.0,
                            0,
                            16.0,
                          ),
                          scrollDirection: Axis.vertical,
                          itemCount: cc.length,
                          separatorBuilder: (_, __) => const SizedBox(height: 16.0),
                          itemBuilder: (context, ccIndex) {
                            final ccItem = cc[ccIndex];
                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                FFAppState().countryName = getJsonField(
                                  ccItem,
                                  r'''$.name''',
                                ).toString();
                                FFAppState().countryCode = getJsonField(
                                  ccItem,
                                  r'''$.code''',
                                ).toString();
                                FFAppState().countryDialCode = getJsonField(
                                  ccItem,
                                  r'''$.dial_code''',
                                ).toString();
                                safeSetState(() {});
                                Navigator.pop(context);
                              },
                              child: Container(
                                width: 100.0,
                                height: 49.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      16.0, 14.0, 16.0, 14.0),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          getJsonField(
                                            ccItem,
                                            r'''$.name''',
                                          ).toString(),
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            color: const Color(0xFF636363),
                                            fontWeight: FontWeight.normal,
                                            fontSize: 14.0,
                                          ),
                                        ),
                                        Text(
                                          '(${getJsonField(
                                            ccItem,
                                            r'''$.dial_code''',
                                          ).toString()})',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            color: const Color(0xFF636363),
                                            fontWeight: FontWeight.normal,
                                            fontSize: 14.0,
                                          ),
                                        ),
                                      ].divide(const SizedBox(width: 4.0)),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
