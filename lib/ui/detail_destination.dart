import 'package:flutter/material.dart';
import 'package:submission_flutter_app/models/destination_model.dart';

class DetailScreen extends StatefulWidget {
  final DestinationModel destination;

  const DetailScreen({Key? key, required this.destination}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  String _selectedMenu = 'Description';
  List<String> _selectMenu = ['Description', 'Offer', 'Review'];

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.destination.name,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset(
                  widget.destination.imageAsset
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: _selectMenu.map((menu) {
                    bool isSelected = _selectedMenu == menu;

                    return Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.0),
                        child: Column(
                          children: <Widget>[
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  _selectedMenu = menu;
                                });
                              },
                              child: Text(
                                menu,
                                style: TextStyle(
                                    color: isSelected ? Colors.blue : Colors.black,
                                    fontSize: 14.0
                                ),
                              ),
                            ),
                            if (isSelected)
                              Container(
                                margin: EdgeInsets.only(top: 5.0),
                                height: 3.0,
                                width: 30.0,
                                color: Colors.blue,
                              )
                          ],
                        )
                      )
                    );
                  }).toList(),
                ),
              ),
              _detailMenu(_selectedMenu)
            ],
          )
        )
      )
    );
  }

  Widget _detailMenu(String selectedMenu) {
    switch (selectedMenu) {
      case 'Description':
        return Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(15.0),
                child: Text(
                  'Description',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold
                  ),
                )
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  widget.destination.description,
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                  textAlign: TextAlign.justify,
                )
              )
            ],
          )
        );
      case 'Offer':
        return Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(15.0),
                child: Text(
                  'Offer Container',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold
                  ),
                )
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                  textAlign: TextAlign.justify,
                )
              )
            ],
          )
        );
      case 'Review':
        return Container(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(15.0),
                child: Text(
                  'Review Container',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold
                  )
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                  textAlign: TextAlign.justify,
                )
              )
            ],
          )
        );
      default: return Container();
    }
  }
}