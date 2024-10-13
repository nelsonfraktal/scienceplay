import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'finish_model.dart';
export 'finish_model.dart';

class FinishWidget extends StatefulWidget {
  const FinishWidget({super.key});

  @override
  State<FinishWidget> createState() => _FinishWidgetState();
}

class _FinishWidgetState extends State<FinishWidget> {
  late FinishModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FinishModel());
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
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 24.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: SvgPicture.asset(
                              'assets/images/Check_Alt.svg',
                              fit: BoxFit.contain,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 24.0, 0.0, 32.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'dgjvcv1v' /* Nice work! */,
                              ),
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: const Color(0xFF383438),
                                fontWeight: FontWeight.w600,
                                fontSize: 25.0,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: const Color(0xFFF3F2F3),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 19.0, 15.0, 15.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: SvgPicture.asset(
                                          'assets/images/Student.svg',
                                          width: 40.0,
                                          height: 40.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'gpca19bq' /* 2 CORRECT */,
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color: const Color(0xFF383438),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'qxbxh4aw' /* You answered 2 out of 3 quiz q... */,
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color: const Color(0xFF383438),
                                                fontWeight: FontWeight.normal,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 4.0)),
                                        ),
                                      ),
                                    ].divide(const SizedBox(width: 12.0)),
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: const Color(0xFFF3F2F3),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 19.0, 15.0, 15.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: SvgPicture.asset(
                                          'assets/images/Student.svg',
                                          width: 40.0,
                                          height: 40.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '62g8laiy' /* 2 CORRECT */,
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color: const Color(0xFF383438),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'paf0dfto' /* You answered 2 out of 3 quiz q... */,
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color: const Color(0xFF383438),
                                                fontWeight: FontWeight.normal,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 4.0)),
                                        ),
                                      ),
                                    ].divide(const SizedBox(width: 12.0)),
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: const Color(0xFFF3F2F3),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 19.0, 15.0, 15.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: SvgPicture.asset(
                                          'assets/images/Student.svg',
                                          width: 40.0,
                                          height: 40.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'briveg6y' /* 2 CORRECT */,
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color: const Color(0xFF383438),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                            Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                't1e4kpkf' /* You answered 2 out of 3 quiz q... */,
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color: const Color(0xFF383438),
                                                fontWeight: FontWeight.normal,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 4.0)),
                                        ),
                                      ),
                                    ].divide(const SizedBox(width: 12.0)),
                                  ),
                                ),
                              ),
                            ].divide(const SizedBox(height: 12.0)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 15.0, 24.0, 15.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                't7rhbp0d' /* Retry Quiz */,
                              ),
                              textAlign: TextAlign.center,
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: FlutterFlowTheme.of(context).primary,
                                fontWeight: FontWeight.w600,
                                fontSize: 19.0,
                              ),
                            ),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: FFLocalizations.of(context).getText(
                            'sytvd541' /* Done */,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 55.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: GoogleFonts.getFont(
                              'Poppins',
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 19.0,
                            ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(56.0),
                          ),
                        ),
                      ].divide(const SizedBox(height: 16.0)),
                    ),
                  ),
                ),
              ].divide(const SizedBox(height: 16.0)),
            ),
          ),
        ),
      ),
    );
  }
}
