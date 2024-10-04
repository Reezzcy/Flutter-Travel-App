import 'package:flutter/material.dart';
import 'package:submission_flutter_app/ui/dashboard_screen.dart';

class LoginScreen extends StatefulWidget {

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _username = '';
  String _password = '';
  bool isVisiblePassword = false;

  final List<String> _logoImageAssetList = [
    'images/google-logo.png',
    'images/facebook-logo.png',
    'images/x-logo.png'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Flutter Travel App',
                    style: const TextStyle(
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    'Dreams come true on every trip',
                    style: const TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    height: 60.0,
                  ),
                  TextField(
                    onChanged: (String value) {
                      setState(() {
                        _username = value;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(),
                    )
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Expanded(
                       child: TextField(
                           onChanged: (String value) {
                             setState(() {
                               _password = value;
                             });
                           },
                           obscureText: !isVisiblePassword,
                           decoration: InputDecoration(
                             labelText: 'Password',
                             border: OutlineInputBorder(),
                           )
                       )
                     ),
                     SizedBox(width: 10),
                     Container(
                       child: IconButton(
                         icon: Icon(
                           isVisiblePassword ? Icons.visibility : Icons.visibility_off,
                         ),
                         onPressed: () {
                           setState(() {
                             isVisiblePassword = !isVisiblePassword;
                           });
                         },
                       ),
                       decoration: BoxDecoration(
                         border: Border.all(color: Colors.grey),
                         borderRadius: BorderRadius.circular(4.0)
                       ),
                     ),
                   ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ElevatedButton(
                    child: Text('Login'),
                    onPressed: (){
                      if (_username != '' && _password != '' && _password.length >= 8) {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return DashboardScreen(_username);
                        }));
                      } else {
                        showSnackbar();
                      }
                    }
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Center(
                    child: Text(
                      'or sign in with',
                      style: TextStyle(
                          fontSize: 10.0
                      ),
                    )
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _logoImageAssetList.map((logo) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: 50,
                          width: 50,
                          child: Image.asset(logo)
                        )
                      );
                    }).toList(),
                  )
                ],
              )
            )
          )
        )
      )
    );
  }

  void showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Masukan Akun dengan Benar!'),
        duration: Duration(seconds: 2),
      )
    );
  }
}