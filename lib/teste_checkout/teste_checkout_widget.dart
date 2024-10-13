import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'teste_checkout_model.dart';
export 'teste_checkout_model.dart';

class TesteCheckoutWidget extends StatefulWidget {
  const TesteCheckoutWidget({super.key});

  @override
  State<TesteCheckoutWidget> createState() => _TesteCheckoutWidgetState();
}

class _TesteCheckoutWidgetState extends State<TesteCheckoutWidget> {
  late TesteCheckoutModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TesteCheckoutModel());
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              FlutterFlowWebView(
                content:
                    '<!--- Required script --->\n<script src=\"https://checkout.hotmart.com/lib/hotmart-checkout-elements.js\"></script>\n\n<!--- Your button --->\n<button id=\"payment_button\">Proceed to checkout</button>\n\n<!--- Configuration --->\n<script>\nconst elements = checkoutElements.init(\'overlayCheckout\', {\n    offer: \'5fan25jf\'\n})\nelements.attach(\'#payment_button\')\n</script>',
                height: MediaQuery.sizeOf(context).height * 1.0,
                verticalScroll: false,
                horizontalScroll: false,
                html: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
