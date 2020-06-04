import 'package:flutter/material.dart';

class WorldStaticticsPage extends StatefulWidget {
  final Map data;
  //
  WorldStaticticsPage(this.data);
  @override
  _WorldStaticticsPageState createState() => _WorldStaticticsPageState();
}

class _WorldStaticticsPageState extends State<WorldStaticticsPage> {
  //final Map<dynamic,dynamic> countriesData= widget.data['countriesData'];
  //print(widget.data['countriesData']);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
       //backgroundColor: Colors.black,
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                  //alignment: Alignment(0.0, -0.40),
                  color: Colors.white,
                  child: Image(
                    image: AssetImage('assets/images/world2.jpg'),
                    fit: BoxFit.cover,
                  )),
              //SizedBox(height: 20.0),
              Container(
                color: Colors.blue[900],
                  padding: EdgeInsets.fromLTRB(40, 20, 60, 20),
                  child: Text(
                    'Confirmed cases Worldwide',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold,
                        fontSize: 24.0),
                  )),

             // SizedBox(height: 20.0),
              GridView.count(
                padding: EdgeInsets.fromLTRB(0, 270, 0, 0),
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 2.0,
                mainAxisSpacing: 4.0,
                shrinkWrap: true,
                children: <Widget>[
                  _buildCard('Total', widget.data['worldTotal'], 1),
                  _buildCard('Active', widget.data['worldActive'], 2),
                  _buildCard('Recovered', widget.data['worldRecovered'], 3),
                  _buildCard('Deaths', widget.data['worldDeaths'], 4),
                ],
              ),
               Container(
                  
                    //padding: EdgeInsets.fromLTRB(60, 20, 10, 20),
                    padding: EdgeInsets.fromLTRB(30, 720, 30, 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                         Text(
                        'Today',
                        style: TextStyle(
                            color: Colors.blue[800],
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      ),
                        Text(
                        'Total',
                        style: TextStyle(
                            color: Colors.amber[900],
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      ),
                      
                          Text(
                        'Recovered',
                        style: TextStyle(
                            color: Colors.green[900],
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      ),
                           Text(
                        'Deaths',
                        style: TextStyle(
                            color: Colors.red[900],
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      ),
                        ]),
                  ),
                  // Container(
                  
                  //   //padding: EdgeInsets.fromLTRB(60, 20, 10, 20),
                  //   padding: EdgeInsets.fromLTRB(40, 750, 45, 0),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: <Widget>[
                  //       Icon(Icons.arrow_drop_down,),
                  //      Icon(Icons.arrow_drop_down,),
                  //      Icon(Icons.arrow_drop_down),
                  //      Icon(Icons.arrow_drop_down),
                  //       ]),
                  // ),
            ],
          ),
          //SizedBox(height: 8),
          Container(
            height: 580,
            margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: ListView.builder(

                //addAutomaticKeepAlives: true,
                shrinkWrap: true,
                itemCount: widget.data['countriesData'].length,
                itemBuilder: (context, index) {
                  return Card(
                      elevation: 5,
                    shadowColor: Colors.grey[400],
                    
                    //color: Colors.grey[100],
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: ListTile(
                      leading: Column(children: <Widget>[
                        Icon(
                          Icons.trending_up,
                          color: Colors.red,
                          size: 30,
                        ),
                        //SizedBox(height: 10),
                        Text(
                          '+${widget.data['countriesData'][index]['todayCases']}',
                          style: TextStyle(
                            color: Colors.blue[700],
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        //SizedBox(width: 40),
                      ]),

                      title: Text(
                        '${widget.data['countriesData'][index]['country']}',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Quicksand',
                          letterSpacing: 1,
                           
                        ),
                      ),

                      subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            //SizedBox(height: 20),

                            Text(
                              '${widget.data['countriesData'][index]['cases']}',
                              style: TextStyle(
                                color: Colors.amber[700],
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Quicksand',
                                 fontSize: 18,
                                //letterSpacing: 1,
                              ),
                            ),
                            //SizedBox(width: 30),
                            Text(
                              '${widget.data['countriesData'][index]['recovered']}',
                              style: TextStyle(
                                color: Colors.green[700],
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Quicksand',
                                 fontSize: 18,
                                //letterSpacing: 1,
                              ),
                            ),
                            //SizedBox(width: 30),
                            Text(
                              '${widget.data['countriesData'][index]['deaths']}',
                              style: TextStyle(
                                color: Colors.red[700],
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Quicksand',
                                 fontSize: 18,
                                //letterSpacing: 1,
                              ),
                            ),
                          ]),
                      //${Country(widget.countryNames[index])}
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(String name, String status, int cardIndex) {
    return Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: 7.0,
        child: Column(
          children: <Widget>[
            //SizedBox(height: 8.0),
            Stack(children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 40.0),
                height: 10.0,
                width: 10.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(
                        color: Colors.white,
                        style: BorderStyle.solid,
                        width: 2.0)),
              )
            ]),
           // SizedBox(height: 8.0),
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
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0)),
                    ),
                    child: Center(
                      child: Text(
                        '$status',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontFamily: 'Quicksand'),
                      ),
                    )))
          ],
        ),
        margin: cardIndex.isEven
            ? EdgeInsets.fromLTRB(7.0, 0.0, 21.0, 10.0)
            : EdgeInsets.fromLTRB(24.0, 0.0, 4.0, 10.0));
  }
}
