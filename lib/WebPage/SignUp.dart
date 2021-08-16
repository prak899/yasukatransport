import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override

  String title,url='https://yasujalogistics.in/project/';
  bool isLoading=true;
  final _key = UniqueKey();
  WebViewState(String title,String url){
    this.title=title;
    this.url=url;
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yasuja Transport'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_outlined),
            onPressed: () {

            },
          ),
        ],
      ),

      body: Stack(
        children: <Widget>[
          WebView(
            key: _key,
            initialUrl: this.url,
            javascriptMode: JavascriptMode.unrestricted,
            onPageFinished: (finish) {
              setState(() {
                isLoading = false;
              });
            },
          ),
          isLoading ? Center( child: CircularProgressIndicator(),)
              : Stack(),
        ],
      ),
    );
  }
}
