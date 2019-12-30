import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  final String title;
  const SignUpPage({Key key, this.title = "SignUp"}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  final _addressController = TextEditingController();
  final _objectiveController = TextEditingController();
  final _ageController = TextEditingController();
  final _heightController = TextEditingController();
  final _weightController = TextEditingController();

  String _value = 'M';

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Criar Conta"),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(1),
              child: Material(
                elevation: 2.0,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: TextFormField(
                  controller: _nameController,
                  cursorColor: Colors.deepOrange,
                  decoration: InputDecoration(
                    hintText: "Nome Completo",
                    prefixIcon: Material(
                      elevation: 0,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: Icon(Icons.person, color: Colors.yellow[700]),
                    ),
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 13),
                  ),
                  validator: (text) {
                    if (text.isEmpty) {
                      return "Nome inválido!";
                    }
                    return null;
                  },
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(1),
              child: Material(
                elevation: 2.0,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: TextFormField(
                  controller: _addressController,
                  cursorColor: Colors.deepOrange,
                  decoration: InputDecoration(
                    hintText: "Endereço",
                    prefixIcon: Material(
                      elevation: 0,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: Icon(Icons.home, color: Colors.yellow[700]),
                    ),
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 13),
                  ),
                  validator: (text) {
                    if (text.isEmpty) {
                      return "Endereço inválido!";
                    }
                    return null;
                  },
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
                padding: EdgeInsets.all(1),
                child: Row(
                  children: <Widget>[
                    Flexible(
                      fit: FlexFit.loose,
                      child: Material(
                        elevation: 2.0,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: TextFormField(
                          controller: _ageController,
                          cursorColor: Colors.deepOrange,
                          decoration: InputDecoration(
                            hintText: "Nascimento",
                            prefixIcon: Material(
                              elevation: 0,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              child:
                                  Icon(Icons.cake, color: Colors.yellow[700]),
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 13),
                          ),
                          validator: (text) {
                            if (text.isEmpty) {
                              return "Idade inválida!";
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      fit: FlexFit.tight,
                      child: Material(
                        elevation: 2.0,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: DropdownButton<String>(
                            items: [
                              DropdownMenuItem<String>(
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.person,
                                      color: Theme.of(context)
                                          .textTheme
                                          .body1
                                          .color,
                                    ),
                                    Text('Masculino'),
                                  ],
                                ),
                                value: 'M',
                              ),
                              DropdownMenuItem<String>(
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.pregnant_woman,
                                      color: Theme.of(context)
                                          .textTheme
                                          .body1
                                          .color,
                                    ),
                                    Text('Feminino'),
                                  ],
                                ),
                                value: 'F',
                              )
                            ],
                            isExpanded: true,
                            onChanged: (String value) {
                              setState(() {
                                _value = value;
                              });
                            },
                            value: _value,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            iconEnabledColor: Colors.black,
                            iconSize: 40,
                          ),
                        ),
                      ),
                    )
                  ],
                )),
            SizedBox(height: 10),
            Padding(
                padding: EdgeInsets.all(1),
                child: Row(
                  children: <Widget>[
                    Flexible(
                      child: Material(
                        elevation: 2.0,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: TextFormField(
                          controller: _heightController,
                          cursorColor: Colors.deepOrange,
                          decoration: InputDecoration(
                            hintText: "Altura",
                            prefixIcon: Material(
                              elevation: 0,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              child: Icon(Icons.arrow_upward,
                                  color: Colors.yellow[700]),
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 13),
                          ),
                          validator: (text) {
                            if (text.isEmpty) {
                              return "Altura inválida!";
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      child: Material(
                        elevation: 2.0,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: TextFormField(
                          controller: _weightController,
                          cursorColor: Colors.deepOrange,
                          decoration: InputDecoration(
                            hintText: "Peso",
                            prefixIcon: Material(
                              elevation: 0,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              child: Icon(Icons.panorama_wide_angle,
                                  color: Colors.yellow[700]),
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 13),
                          ),
                          validator: (text) {
                            if (text.isEmpty) {
                              return "Peso inválido!";
                            }
                            return null;
                          },
                        ),
                      ),
                    )
                  ],
                )),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(1),
              child: Material(
                elevation: 2.0,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: TextFormField(
                  controller: _emailController,
                  cursorColor: Colors.deepOrange,
                  decoration: InputDecoration(
                    hintText: "E-mail",
                    prefixIcon: Material(
                      elevation: 0,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: Icon(Icons.email, color: Colors.yellow[700]),
                    ),
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 13),
                  ),
                  validator: (text) {
                    if (text.isEmpty || !text.contains("@")) {
                      return "E-mail inválido!";
                    }
                    return null;
                  },
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(1),
              child: Material(
                elevation: 2.0,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: TextFormField(
                  controller: _passController,
                  cursorColor: Colors.deepOrange,
                  decoration: InputDecoration(
                    hintText: "Senha",
                    prefixIcon: Material(
                      elevation: 0,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: Icon(Icons.lock, color: Colors.yellow[700]),
                    ),
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 13),
                  ),
                  obscureText: true,
                  validator: (text) {
                    if (text.isEmpty || text.length < 6) {
                      return "Senha inválida!";
                    }
                    return null;
                  },
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(1),
              child: Material(
                elevation: 2.0,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: TextFormField(
                  controller: _objectiveController,
                  cursorColor: Colors.deepOrange,
                  decoration: InputDecoration(
                    hintText: "Objetivo",
                    prefixIcon: Material(
                      elevation: 0,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: Icon(Icons.my_location, color: Colors.yellow[700]),
                    ),
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 13),
                  ),
                  validator: (text) {
                    if (text.isEmpty) {
                      return "Objetivo inválido!";
                    }
                    return null;
                  },
                  maxLines: 4,
                  keyboardType: TextInputType.multiline,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.all(1),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Theme.of(context).primaryColor),
                child: FlatButton(
                  child: Text(
                    "Criar Conta",
                    style: TextStyle(
                        color: Color(0xff1A1316),
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      Scaffold.of(context).showSnackBar(
                          SnackBar(content: Text('Processing Data')));
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
