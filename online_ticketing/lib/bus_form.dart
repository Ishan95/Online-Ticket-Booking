import 'package:flutter/material.dart';

class FormScr2 extends StatefulWidget {
  @override
  _FormScr2State createState() => _FormScr2State();
}

class _FormScr2State extends State<FormScr2> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late String name;
  late String idno;
  late String from;
  late String to;
  late int date;
  late String email;
  late int phone;

  Widget _buildNameField() {
    return TextFormField(
      validator: (text) {
        return HelperValidator.nameValidate(text!);
      },
      decoration: InputDecoration(labelText: 'Name', hintText: 'Enter Your Full Name'),
      onSaved: (value) {
        name = value!;
      },
    );
  }
  Widget _buildIDNoField() {
    return TextFormField(
      validator: (text) {
        return HelperValidator.IDNoValidate(text!);
      },
      maxLength: 10,
      decoration: InputDecoration(labelText: 'ID Number', hintText: 'Enter your Valid ID Number'),
      onSaved: (value) {
        idno = value!;
      },
    );
  }
  Widget _buildFromField() {
    return TextFormField(
      validator: (text) {
        return HelperValidator.FromValidate(text!);
      },
      maxLength: 30,
      decoration: InputDecoration(labelText: 'From', hintText: 'Journey From'),
      onSaved: (value) {
        from = value!;
      },
    );
  }
  Widget _buildToField() {
    return TextFormField(
      validator: (text) {
        return HelperValidator.ToValidate(text!);
      },
      maxLength: 30,
      decoration: InputDecoration(labelText: 'To', hintText: 'Journey To'),
      onSaved: (value) {
        to = value!;
      },
    );
  }
  Widget _buildDateField() {
    return TextFormField(
      maxLength: 10,
      keyboardType: TextInputType.number,
      validator: (text) {
        if (text!.isEmpty) {
          return "Please enter the Date";
        }
        if(text != 10) {
          return null;
        }
      },
      decoration: InputDecoration(labelText: 'Date', hintText: 'year-month-date'),
      onSaved: (value) {
        date = int.parse(value!);
      },
    );
  }

  Widget _buildEmailField() {
    return TextFormField(
      validator: (text) {
        // if (text!.isEmpty) {
        //   return "Please enter a valid email";
        // }
        return null;
      },
      maxLength: 20,
      decoration:
      InputDecoration(labelText: 'Email', hintText: 'Enter your email'),
      onSaved: (value) {
        email = value!;
      },
    );
  }

  Widget _buildPhoneField() {
    return TextFormField(
      maxLength: 10,
      keyboardType: TextInputType.number,
      validator: (text) {
        if (text!.isEmpty) {
          return "Please enter a mobile Number";
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: 'Phone', hintText: 'Enter a mobile number'),
      onSaved: (value) {
        phone = int.parse(value!);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Contact Form'),
      // ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _buildNameField(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _buildIDNoField(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _buildFromField(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _buildToField(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _buildDateField(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _buildEmailField(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _buildPhoneField(),
                ),
                SizedBox(height: 50),
                Container(
                  width: 150,
                  child: ElevatedButton(
                    child: Text('Submit',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                      ),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class HelperValidator {
  static String? nameValidate(String value) {
    if (value.isEmpty) {
      return "Name can't be empty";
    }
    if (value.length < 10) {
      return "Name must be at least 10 characters";
    }
    return null;
  }
  static String? IDNoValidate(String value) {
    if (value.isEmpty) {
      return "ID number can't be empty";
    }
    if (value.length != 10) {
      return "Enter valid ID Number";
    }
    return null;
  }
  static String? FromValidate(String value) {
    if (value.isEmpty) {
      return "";
    }
    if (value.length < 2) {
      return "";
    }
    if (value.length > 30) {
      return "";
    }
    return null;
  }
  static String? ToValidate(String value) {
    if (value.isEmpty) {
      return "";
    }
    if (value.length < 2) {
      return "";
    }
    if (value.length > 30) {
      return "";
    }
    return null;
  }
}