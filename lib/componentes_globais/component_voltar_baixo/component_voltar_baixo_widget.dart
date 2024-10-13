import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'component_voltar_baixo_model.dart';
export 'component_voltar_baixo_model.dart';

class ComponentVoltarBaixoWidget extends StatefulWidget {
  const ComponentVoltarBaixoWidget({
    super.key,
    this.customAction,
  });

  final Future Function()? customAction;

  @override
  State<ComponentVoltarBaixoWidget> createState() =>
      _ComponentVoltarBaixoWidgetState();
}

class _ComponentVoltarBaixoWidgetState
    extends State<ComponentVoltarBaixoWidget> {
  late ComponentVoltarBaixoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentVoltarBaixoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        Navigator.pop(context);
      },
      child: Container(
        width: 48.0,
        height: 48.0,
        decoration: const BoxDecoration(),
        child: Align(
          alignment: const AlignmentDirectional(-1.0, 0.0),
          child: Container(
            width: 40.0,
            height: 40.0,
            decoration: const BoxDecoration(
              color: Color(0xFFEEE7ED),
              shape: BoxShape.circle,
            ),
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: 24.0,
              height: 24.0,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'assets/images/Icon-back-down-48px.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
