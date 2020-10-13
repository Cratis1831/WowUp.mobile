import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../api.dart';
import '../../models/wowup.dart';

class MyAddonsScreen extends StatefulWidget {
  @override
  _MyAddonsScreenState createState() => _MyAddonsScreenState();
}

class _MyAddonsScreenState extends State<MyAddonsScreen> {
  Future<List<Addons>> fetchWowUpData() async {
    final response = await http.get(kWowUpApi);
    List<Addons> listOfAddons;

    if (response.statusCode == 200) {
      print('WowUpAPI Success');
      // If the server did return a 200 OK response,d
      // then parse the JSON.
      Map<String, dynamic> map = json.decode(response.body);

      listOfAddons = (map['addons'] as List).map((i) => Addons.fromJson(i)).toList();

      return listOfAddons;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception(json.decode(response.body));
    }
  }

  Future<List<Addons>> futureWowUpData;

  @override
  void initState() {
    futureWowUpData = fetchWowUpData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: futureWowUpData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (ctx, item) {
                Addons addon = snapshot.data[item];
                if (!addon.isAvailable) {
                  return Card(
                    child: ListTile(
                      leading: Image.network(
                        addon.ownerImageUrl,
                        height: 48,
                        width: 48,
                      ),
                      title: Text(
                        addon.repositoryName,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        addon.description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      trailing: Icon(Icons.more_vert),
                      isThreeLine: true,
                    ),
                  );
                }
              },
            );
          } else if (snapshot.hasError) {
            return Text("ERROR:  ${snapshot.error}");
          }
          // By default, show a loading spinner.
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
