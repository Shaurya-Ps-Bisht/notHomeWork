import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:registration_rr/Pages/HomePage.dart';

class ApplicationForm extends StatefulWidget {
  @override
  _ApplicationFormState createState() => _ApplicationFormState();
}

class _ApplicationFormState extends State<ApplicationForm> {
  String _weddingDate = '';
  final _formKey = GlobalKey<FormState>();
  String _selectedOption = 'Bride';
  String _firstName = '';
  String _lastName = '';
  String _phoneNumber = '';
  String _email = '';
  DateTime? _selectedDate;
  String _location = '';

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Submit the form data
      print('Form submitted');
      print('Selected option: $_selectedOption');
      print('First name: $_firstName');
      print('Last name: $_lastName');
      print('Phone number: $_phoneNumber');
      print('Email: $_email');
      print('Selected date: $_selectedDate');
      print('Location: $_location');
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 0, 0, 0),
          border: Border.all(),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),

        // color: Color.fromARGB(255, 92, 92, 92),
        width: screenSize.width * 0.86,
        height: screenSize.height * 0.8,
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                  child: Text(
                'Select your role:\n',
                style: TextStyle(fontSize: screenSize.width * 0.04),
              )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedOption = 'Bride';
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: _selectedOption == 'Bride'
                          ? Color.fromARGB(255, 0, 0, 0)
                          : Colors.grey,
                      onPrimary: Colors.white,
                    ),
                    child: Text(
                      'Bride',
                      style: TextStyle(
                        color: Color.fromARGB(255, 214, 201, 12),
                        fontSize: screenSize.width * 0.03,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedOption = 'Groom';
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: _selectedOption == 'Groom'
                          ? Color.fromARGB(255, 0, 0, 0)
                          : Colors.grey,
                      onPrimary: Colors.white,
                    ),
                    child: Text(
                      'Groom',
                      style: TextStyle(
                          color: Color.fromARGB(255, 214, 201, 12),
                          fontSize: screenSize.width * 0.03),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedOption = 'Other';
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: _selectedOption == 'Other'
                          ? Color.fromARGB(255, 0, 0, 0)
                          : Colors.grey,
                      onPrimary: Colors.white,
                    ),
                    child: Text(
                      'Other',
                      style: TextStyle(
                          color: Color.fromARGB(255, 214, 201, 12),
                          fontSize: screenSize.width * 0.03),
                    ),
                  ),
                ],
              ),
              Center(
                child: Container(
                  width: screenSize.width * 0.79,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: TextStyle(
                      fontFamily: 'Serif',
                      fontSize: screenSize.width * 0.03,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your phone number';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      _phoneNumber = value;
                    },
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: screenSize.width * 0.79,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'First Name',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: TextStyle(
                      fontFamily: 'Serif',
                      fontSize: screenSize.width * 0.03,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your First Name';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      _phoneNumber = value;
                    },
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: screenSize.width * 0.79,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Last Name',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: TextStyle(
                      fontFamily: 'Serif',
                      fontSize: screenSize.width * 0.03,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your Last Name';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      _phoneNumber = value;
                    },
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: screenSize.width * 0.79,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: TextStyle(
                      fontFamily: 'Serif',
                      fontSize: screenSize.width * 0.03,
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your Email';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      _phoneNumber = value;
                    },
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              TextButton(
                onPressed: () async {
                  final DateTime? date = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime(DateTime.now().year + 10),
                  );

                  if (date != null) {
                    setState(() {
                      _weddingDate = DateFormat('MM/dd/yyyy').format(date);
                    });
                  }
                },
                child: TextFormField(
                  enabled: false,
                  decoration: InputDecoration(
                    labelText: 'Date of Wedding',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                    suffixIcon: Icon(Icons.calendar_today),
                  ),
                  controller: TextEditingController(text: _weddingDate),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a date';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 20.0),
              Center(
                child: Text(
                  'Location of Wedding:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Center(
                child: Container(
                  width: screenSize.width * 0.79,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'City/Town',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a location';
                      }
                      return null;
                    },
                    onChanged: (value) {},
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Center(
                child: Container(
                  width: screenSize.width * 0.79,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'State/Province/Region',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a location';
                      }
                      return null;
                    },
                    onChanged: (value) {},
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Center(
                child: Container(
                  width: screenSize.width * 0.79,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Country',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter a location';
                      }
                      return null;
                    },
                    onChanged: (value) {},
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromARGB(255, 214, 201, 12)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(18.0),
                          bottomLeft: Radius.circular(18.0),
                          topRight: Radius.circular(18.0),
                          bottomRight: Radius.circular(18.0)),
                    )),
                    minimumSize: MaterialStateProperty.all<Size>(Size(150, 60)),
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.symmetric(vertical: 5),
                    ),
                  ),
                  child: Text('Submit'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
