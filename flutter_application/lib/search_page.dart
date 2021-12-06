import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(child: Search()),
      ),
    );
  }
}

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20.0),
          child: Form(
              child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: '食べたいもの、メニューなど',
                  hintStyle: TextStyle(color: Colors.black26),
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
                  showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(15)),
                      ),
                      builder: (BuildContext context) {
                        return Container(
                          height: 800,
                          child: ListView(
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    closeButton(context, 20, '完了', () {
                                      Navigator.pop(context);
                                    }),
                                    Text(
                                      '検索条件設定',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    closeButton(context, 20, 'これで検索', () {
                                      Navigator.pop(context);
                                    }),
                                  ],
                                ),
                              ),
                              Card(
                                child: ListTile(
                                  leading: Icon(Icons.ac_unit),
                                  title: Text('One-line with trailing widget'),
                                  trailing: Icon(Icons.more_vert),
                                ),
                              ),
                              Card(
                                child: ListTile(
                                  leading: Icon(Icons.ac_unit),
                                  title: Text('One-line with trailing widget'),
                                  trailing: Icon(Icons.more_vert),
                                ),
                              ),
                              Card(
                                child: ListTile(
                                  leading: Icon(Icons.ac_unit),
                                  trailing: Icon(Icons.more_vert),
                                  title: Text('One-line with trailing widget'),
                                ),
                              ),
                              Card(
                                child: ListTile(
                                  leading: Icon(Icons.ac_unit),
                                  trailing: Icon(Icons.more_vert),
                                  title: Text('One-line with trailing widget'),
                                ),
                              ),
                              Card(
                                child: ListTile(
                                  leading: Icon(Icons.ac_unit),
                                  trailing: Icon(Icons.more_vert),
                                  title: Text('One-line with trailing widget'),
                                ),
                              ),
                            ],
                          ),
                        );
                      });
                },
                child: Container(
                  decoration: BoxDecoration(color: Colors.black12),
                  child: Row(
                    children: <Widget>[
                      _buildIconButtonCulumn(Icons.money, "予算"),
                      Spacer(),
                      _buildIconButtonCulumn(Icons.money, "予算"),
                      Spacer(),
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
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                child: const Text(
                  '検索',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.orange, minimumSize: Size(300, 50)),
                onPressed: () {
                  Navigator.pushNamed(context, '/lunch');
                  print("search!!");
                },
              ),
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

  // 閉じるボタン
  Widget closeButton(
    BuildContext context,
    double fontSize,
    String text,
    Function() onPressed,
  ) {
    return Container(
      child: TextButton(
        child: Text(
          text,
          style: TextStyle(
              fontSize: fontSize,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          onPressed();
        },
      ),
    );
  }
}
