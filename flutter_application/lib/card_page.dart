import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  Widget build(BuildContext context) {
    final MaterialColor materialWhite = const MaterialColor(
      0xFFFFFFFF,
      const <int, Color>{
        50: const Color(0xFFFFFFFF),
        100: const Color(0xFFFFFFFF),
        200: const Color(0xFFFFFFFF),
        300: const Color(0xFFFFFFFF),
        400: const Color(0xFFFFFFFF),
        500: const Color(0xFFFFFFFF),
        600: const Color(0xFFFFFFFF),
        700: const Color(0xFFFFFFFF),
        800: const Color(0xFFFFFFFF),
        900: const Color(0xFFFFFFFF),
      },
    );
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: materialWhite,
      ),
      home: Scaffold(
        body: SafeArea(child: CardComponent()),
      ),
    );
  }
}

class CardComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
                onTap: () {
                  print("ss");
                },
                child: _buildCreditCard(
                    color: Color(0xFF090943),
                    cardExpiration: "08/2022",
                    cardHolder: "HOUSSEM SELMI",
                    cardNumber: "3333 7532 XXXX 9742")),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                print("ss");
              },
              child: _buildCreditCard(
                  color: Color(0xFFFFB74D),
                  cardExpiration: "08/2022",
                  cardHolder: "HOUSSEM SELMI",
                  cardNumber: "3333 7532 XXXX 9742"),
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                print("ss");
              },
              child: _buildCreditCard(
                  color: Color(0xFF13F370),
                  cardExpiration: "08/2022",
                  cardHolder: "HOUSSEM SELMI",
                  cardNumber: "3333 7532 XXXX 9742"),
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
                onTap: () {
                  print("ss");
                },
                child: _buildCreditCard(
                    color: Color(0xFF000000),
                    cardExpiration: "05/2024",
                    cardHolder: "HOUSSEM SELMI",
                    cardNumber: "9874 4785 XXXX 6548"))
          ],
        ),
      ),
    );
  }

/*
  // Build the title section
  Column _buildTitleSection({@required title, @required subTitle}) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('検索結果'),
      ),
    );
  }
*/
  // Build the credit card widget
  Card _buildCreditCard(
      {required Color color,
      required String cardNumber,
      required String cardHolder,
      required String cardExpiration}) {
    return Card(
      elevation: 4.0,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Container(
        height: 200,
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _buildLogosBlock(),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                '$cardNumber',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontFamily: 'CourrierPrime'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ElevatedButton(
                  child: const Text('MAPを開く'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange,
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    print("AAAAAAAAA");
                  },
                ),
                _buildDetailsBlock(label: 'VALID THRU', value: cardExpiration),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Build the top row containing logos
  Row _buildLogosBlock() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Image.asset(
          "assets/images/contact_less.png",
          height: 20,
          width: 18,
        ),
        Image.asset(
          "assets/images/mastercard.png",
          height: 50,
          width: 50,
        ),
      ],
    );
  }

// Build Column containing the cardholder and expiration information
  Column _buildDetailsBlock({required String label, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '$label',
          style: TextStyle(
              color: Colors.grey, fontSize: 9, fontWeight: FontWeight.bold),
        ),
        Text(
          '$value',
          style: TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

// Build the FloatingActionButton
  Container _buildAddCardButton({
    required Icon icon,
    required Color color,
  }) {
    return Container(
      margin: const EdgeInsets.only(top: 3.0),
      alignment: Alignment.centerRight,
      child: FloatingActionButton(
        elevation: 2.0,
        onPressed: () {
          print("Add a credit card");
        },
        backgroundColor: color,
        mini: false,
        child: icon,
      ),
    );
  }
}
