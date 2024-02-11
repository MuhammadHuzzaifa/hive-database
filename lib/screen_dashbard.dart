import 'package:flutter/material.dart';
import 'package:hwive/dtabase_hive/data_box.dart';
import 'package:hwive/screen_add_record.dart';

class ScreenDashboard extends StatefulWidget {
  const ScreenDashboard({super.key});

  @override
  State<ScreenDashboard> createState() => _ScreenDashboardState();
}

class _ScreenDashboardState extends State<ScreenDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (builder) => ScreenAddRecord()));
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: InkWell(
            onTap: () {
              print("${DataBox.getNewkey()}");
            },
            child: Text("Dashboard")),
      ),
    );
  }
}
