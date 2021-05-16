import 'package:group34/utils/color.dart';
import 'package:group34/utils/dimension.dart';
import 'package:group34/utils/styles.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:group34/widgets/google_signup_button_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {





  String _message = '';
  int attemptCount;
  String mail;
  String pass;
  final _formKey = GlobalKey<FormState>();

  FirebaseAuth auth = FirebaseAuth.instance;


  void setmessage(String msg) {
    setState(() {
      _message = msg;
    });
  }



  Future<void> loginUser() async {
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: mail,
          password: pass
      );
      Navigator.pushNamed(context, '/home');
      print(userCredential.toString());

    } on FirebaseAuthException catch (e) {
      print(e.toString());
      if(e.code == 'user-not-found') {
        setmessage('User not found');
      }
      else if (e.code == 'wrong-password') {
        setmessage('Please check your password');
      }
    }
  }

  @override
  void initState() {
    super.initState();

    auth.authStateChanges().listen((User user) {
      if(user == null) {
        print('User is signed out');
      }
      else {
        print('User is signed in');

      }
    });
  }

  @override
  Widget build(BuildContext context) {
    print('Build called');
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'LOGIN',
          style: kAppBarTitleTextStyle,
        ),
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.primary,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: Dimen.regularPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Form(
              key: _formKey,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: TextFormField(
                          decoration: InputDecoration(
                            fillColor: AppColors.secondary,
                            filled: true,
                            hintText: 'E-mail',
                            //labelText: 'Username',
                            labelStyle: kLabelLightTextStyle,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColors.primary),
                              borderRadius: BorderRadius.all(Radius.circular(30.0)),
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,

                          validator: (value) {
                            if(value.isEmpty) {
                              return 'Please enter your e-mail';
                            }
                            if(!EmailValidator.validate(value)) {
                              return 'The e-mail address is not valid';
                            }
                            return null;
                          },
                          onSaved: (String value) {
                            mail = value;
                          },
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 16.0,),


                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: TextFormField(
                          decoration: InputDecoration(
                            fillColor: AppColors.secondary,
                            filled: true,
                            hintText: 'Password',
                            //labelText: 'Username',
                            labelStyle: kLabelLightTextStyle,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColors.primary),
                              borderRadius: BorderRadius.all(Radius.circular(30.0)),
                            ),
                          ),
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,

                          validator: (value) {
                            if(value.isEmpty) {
                              return 'Please enter your password';
                            }
                            if(value.length < 8) {
                              return 'Password must be at least 8 characters';
                            }
                            return null;
                          },
                          onSaved: (String value) {
                            pass = value;
                          },
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 16,),


                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: OutlinedButton(
                          onPressed: () {

                            if(_formKey.currentState.validate()) {
                              _formKey.currentState.save();

                              //showAlertDialog("Action", 'Button clicked');


                              loginUser();

                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(content: Text('Logging in')));

                            }

                          },

                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12.0),
                            child: Text(
                              'Login',
                              style: kButtonDarkTextStyle,
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                          ),
                        ),
                      ),
                    ],
                  ),

                  Text(
                    _message,
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
        Container(
          padding: EdgeInsets.all(4),
          child: OutlineButton.icon(
            label: Text(
              'Sign In With Google',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            highlightedBorderColor: Colors.black,
            borderSide: BorderSide(color: Colors.black),
            textColor: Colors.black,
            icon: FaIcon(FontAwesomeIcons.google, color: Colors.red),
            onPressed: () {
              Navigator.pushNamed(context, '/deneme');
            },
          ),
        ),
          ],
        ),
      ),

    );
  }
}
