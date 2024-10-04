import 'dart:math';
import 'package:flutter/material.dart';
import 'package:submission_flutter_app/models/destination_model.dart';
import 'package:submission_flutter_app/ui/detail_destination.dart';
import 'package:submission_flutter_app/ui/list_destination.dart';

class DashboardScreen extends StatefulWidget {
  final String username;

  const DashboardScreen(this.username, {Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  String _searchPlace = '';
  String _filterDestination = 'All';
  List<String> _filterCategory = ['All', 'Nature', 'City/Country', 'Cultural'];
  List<DestinationModel> _destinations = [];
  List<DestinationModel> _randomDestinations = [];

  @override
  void initState() {
    super.initState();
    _filteringDestination();
    _randomRecommended();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                        child: Text(
                          'Hello, ${widget.username}',
                          style: TextStyle(
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold
                          ),
                        )
                    ),
                    Icon(
                      Icons.person,
                      size: 40.0,
                    )
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.lightBlueAccent),
                    borderRadius: BorderRadius.circular(8.0)
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          onChanged: (String value) {
                            setState(() {
                              _searchPlace = value;
                            });
                          },
                          decoration: InputDecoration(
                            hintText: 'Search a Place here',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(10.0)
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(Icons.search),
                      )
                    ],
                  )
                ),
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: _filterCategory.map((category) {
                      if (_filterDestination == category) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 2.0),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(Colors.lightBlue)
                            ),
                            child: Text(
                              category,
                              style: TextStyle(
                                color: Colors.white
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                _filterDestination = category;
                                _filteringDestination();
                                _randomRecommended();
                              });
                            },
                          )
                        );
                      } else {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                          child: ElevatedButton(
                            child: Text(category),
                            onPressed: () {
                              setState(() {
                                _filterDestination = category;
                                _filteringDestination();
                                _randomRecommended();
                              });
                            },
                          )
                        );
                      }
                    }).toList(),
                  )
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Travels Places',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                        )
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return ListDestination(category: _filterDestination);
                            })
                          );
                        },
                        child: Text(
                          'Show more',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.lightBlue
                          )
                        )
                      )
                    ],
                  )
                ),
                Container(
                  height: 270,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _destinations.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final DestinationModel destination = _destinations[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return DetailScreen(destination: destination);
                            })
                          );
                        },
                        child: Card(
                          margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Image.asset(
                                    destination.imageAsset,
                                    fit: BoxFit.cover,
                                    height: 200,
                                    width: 200,
                                  ),
                                  Positioned(
                                      bottom: 5,
                                      left: 5,
                                      child: Text(
                                        destination.name,
                                        style: TextStyle(
                                          fontSize: 24.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white
                                        ),
                                      )
                                  )
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "${destination.country}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      "${destination.category}",
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontStyle: FontStyle.italic
                                      ),
                                      textAlign: TextAlign.left,
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ),
                      );
                    }
                  )
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    'Recommended Places',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _randomDestinations.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final DestinationModel random = _randomDestinations[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return DetailScreen(destination: random);
                            })
                          );
                        },
                        child: Card(
                          child: Row(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5.0),
                                  child: Image.asset(
                                    random.imageAsset,
                                    fit: BoxFit.cover,
                                    height: 120,
                                    width: 120,
                                  ),
                                )
                              ),
                              Container(
                                width: 120,
                                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${random.name}",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      "${random.country}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      "${random.category}",
                                      style: TextStyle(
                                          fontSize: 10.0,
                                          fontStyle: FontStyle.italic
                                      ),
                                      textAlign: TextAlign.left,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }
                  ),
                )
              ],
            )
          )
        ),
      )
    );
  }

  void _filteringDestination() {
   setState(() {
     if(_filterDestination == 'All') {
       _destinations = destinationList;
     } else {
       _destinations = destinationList.where((destination) {
         return destination.category == _filterDestination;
       }).toList();
     }
   });
  }

  void _randomRecommended() {
    setState(() {
      _randomDestinations = [];
      Random random = Random();
      Set<int> selectedIndices = {};

      while (_randomDestinations.length < 3) {
        int randomIndex = random.nextInt(_destinations.length);
        if (!selectedIndices.contains(randomIndex)) {
          selectedIndices.add(randomIndex);
          _randomDestinations.add(_destinations[randomIndex]);
        }
      }
    });
  }
}