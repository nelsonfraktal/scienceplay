import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'component_voltar_model.dart';
export 'component_voltar_model.dart';

class ComponentVoltarWidget extends StatefulWidget {
  const ComponentVoltarWidget({super.key});

  @override
  State<ComponentVoltarWidget> createState() => _ComponentVoltarWidgetState();
}

class _ComponentVoltarWidgetState extends State<ComponentVoltarWidget> {
  late ComponentVoltarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentVoltarModel());
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
        context.safePop();
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
                'assets/images/Icon-back-48px.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
