import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20.0),
          child: Form(
              child: Column(
            children: <Widget>[
              Text(
                '検索',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: '食べたいもの、メニューなど',
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  print("aa");
                },
                child: Container(
                  decoration: BoxDecoration(color: Colors.black),
                  child: Row(
                    children: <Widget>[
                      _buildIconButtonCulumn(Icons.money, "予算"),
                      Spacer(),
                      _buildIconButtonCulumn(Icons.money, "予算"),
                      Spacer(),
                      _buildIconButtonCulumn(Icons.money, "予算"),
                      Spacer(),
                      _buildIconButtonCulumn(Icons.money, "予算"),
                    ],
                  ),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }

  Widget _buildIconButtonCulumn(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon),
        Container(
          margin: const EdgeInsets.only(top: 8.0),
          child: Text(label),
        )
      ],
    );
  }
}
