import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:urino/core/ui/widgets/base_stateless_widget.dart';


abstract class BaseStatelessScreen extends BaseStatelessWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget getLayout(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Scaffold(
          key: scaffoldKey,
          resizeToAvoidBottomInset: false,
          body: buildBody(context),
          appBar: buildAppBar(context),
        ),
      ),
    );
  }

  PreferredSizeWidget? buildAppBar(BuildContext context);

  Widget buildBody(BuildContext context);

}
