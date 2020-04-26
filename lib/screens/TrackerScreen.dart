import 'package:covid19guide/utils/appStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class TrackerScreen extends StatefulWidget {
  @override
  _TrackerScreenState createState() => _TrackerScreenState();
}

class _TrackerScreenState extends State<TrackerScreen> {


//   var connectivityResult = (Connectivity().checkConnectivity());

  _webView(){
  }

  final key = UniqueKey();

// static final Future<bool> status = _getStatus();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyles.second_background,
        appBar: AppBar(
          leading: InkWell(
              onTap:(){
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
              )
          ),
          title: Text("Covid-19 Guide"),
          centerTitle: true,
          backgroundColor: AppStyles.main_background,
          elevation: 0.0,
          titleSpacing: 1.5,
        ),
        body: WebviewScaffold(
          url: 'https://ghanamuslimweb.com/covid.com/',
          key: key,
          withJavascript: true,
          withZoom: true,
          withLocalStorage: true,
          hidden: true,
          clearCache: true,
          initialChild: Container(
            color: AppStyles.secondary_background,
            child: Center(child: CircularProgressIndicator()),
          ),
        )

    );
  }

}
