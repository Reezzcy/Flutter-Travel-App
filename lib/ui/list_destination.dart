import 'package:flutter/material.dart';
import 'package:submission_flutter_app/models/destination_model.dart';
import 'package:submission_flutter_app/ui/detail_destination.dart';

class ListDestination extends StatelessWidget {
  final String category;

  const ListDestination({Key? key, required this.category}) : super(key: key);

  Widget build(BuildContext context) {
    List<DestinationModel> _destinations = _filterList(category);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            '${category} Destinations',
            style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold
            ),
          ),
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)
          )
        ),
        body: ListView.builder(
          itemCount: _destinations.length,
          itemBuilder: (context, index) {
            final DestinationModel destination = _destinations[index];
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context){
                      return DetailScreen(destination: destination);
                    })
                  );
                },
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              destination.imageAsset,
                              fit: BoxFit.cover,
                            )
                          ),
                          Positioned(
                            bottom: 10.0,
                            left: 15.0,
                            child: Text(
                              destination.name,
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                            )
                          )
                        ]
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 3.0),
                        child: Text(
                          '${destination.name} - ${destination.country}',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        )
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 3.0),
                        child:  Text(
                          destination.category,
                          style: TextStyle(
                            fontSize: 14.0,
                            fontStyle: FontStyle.italic
                          ),
                        )
                      )
                    ],
                  )
                ),
              )
            );
          }
        ),
      )
    );
  }

  List<DestinationModel> _filterList(String category){
    if (category == 'All') {
      return destinationList;
    } else {
      return destinationList.where((destination) {
        return destination.category == category;
      }).toList();
    }
  }
}