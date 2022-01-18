import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';

class VersionPage extends StatelessWidget {
  
  static const String id = "version_page";
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          // ...
          // A title for the subsection:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "About",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
                ),
              ),
              Divider(),
            ],
          ),
          // The version tile :
          ListTile(
            enabled: false,
            title: const Text("Version"),
            trailing: FutureBuilder(
              future: getVersionNumber(),
              builder: (BuildContext context, AsyncSnapshot<String> snapshot) =>
                  Text("${snapshot.hasData ? snapshot.data : "Loading ..."}"),
            ),
          ),
          // ...
        ],
      ),
    );
  }

  Future<String> getVersionNumber() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String version = packageInfo.version;

    return version;
  }
}