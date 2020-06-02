import 'package:flutter/material.dart';

class IndiaStaticticsPage extends StatefulWidget {
  final Map data;
  IndiaStaticticsPage(this.data);
  @override
  _IndiaStaticticsPageState createState() => _IndiaStaticticsPageState();
}

class _IndiaStaticticsPageState extends State<IndiaStaticticsPage> {
  @override
  Widget build(BuildContext context) {
     return new Scaffold(
      // appBar: AppBar(
      //   title: Text('India Data'),
      //   elevation: 0.0,
      //   centerTitle: true,
      //   backgroundColor: Colors.red[500],
        
      // ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                //alignment: Alignment(0.0, -0.40),
                height: 320.0,
                color: Colors.white,
                child: Image(image: AssetImage('assets/images/india2.jpg'),fit: BoxFit.cover,)
              ),
              
            ],
          ),
          SizedBox(height: 20.0),
          Container(
              padding: EdgeInsets.only(left: 25.0, right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Confirmed cases in India',
                    style: TextStyle(
                        color: Colors.grey[600],
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0),
                  ),
                ],
              )),
         
          SizedBox(height: 20.0),
          GridView.count(
            crossAxisCount: 2,
            primary: false,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 4.0,
            shrinkWrap: true,
            children: <Widget>[
              _buildCard('Total', widget.data['indiaTotal'], 1),
              _buildCard('Active', widget.data['indiaActive'], 2),
              _buildCard('Recovered', widget.data['indiaRecovered'], 3),
              _buildCard('Deaths', widget.data['indiaDeaths'], 4),

            ],
          )
        ],
      ),
    );
  }

  Widget _buildCard(String name, String status, int cardIndex) {
    return Card( 
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      ),
      elevation: 7.0,
      child: Column(
        children: <Widget>[
          SizedBox(height: 12.0),
          Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 40.0),
                height: 20.0,
                width: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 2.0
                  )
                ),
              )
            ]),
              SizedBox(height: 8.0),
              Text(
                '$name',
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
              SizedBox(height: 15.0),
              Expanded(
                child: Container(
                  width: 175.0,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only
                    (
                      bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)
                  ),
                ),
                child: Center(
                  child: Text('$status',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white, fontFamily: 'Quicksand'
                  ),
                ),
              )
              )
              )
            ],
          ),
      margin: cardIndex.isEven? EdgeInsets.fromLTRB(7.0, 0.0, 21.0, 10.0):EdgeInsets.fromLTRB(24.0, 0.0, 4.0, 10.0)
     );
  }
}
 
//India's vulnerable sections of society who were suddenly thrown out of work by the nationwide lockdown order 
//Among those affected the most are migrant workers, for whom the lockdown means loss in wages and no food
//Across India, the workers and labourers have been left with little choice other than to walk back to their home villages after public transport was shut during the nationwide lockdown imposed in the wake of the coronavirus pandemic
