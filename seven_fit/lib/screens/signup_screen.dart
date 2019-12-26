import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  final _addressController = TextEditingController();
  final _objectiveController = TextEditingController();
  final _ageController = TextEditingController();
  final _sexController = TextEditingController();
  final _heightController = TextEditingController();
  final _weightController = TextEditingController();

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
                      child: Icon(Icons.person, color: Colors.red),
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
                      child: Icon(Icons.home, color: Colors.red),
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
                              child: Icon(Icons.cake, color: Colors.red),
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
                      child: Material(
                        elevation: 2.0,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: TextFormField(
                          controller: _sexController,
                          cursorColor: Colors.deepOrange,
                          decoration: InputDecoration(
                            hintText: "Sexo",
                            prefixIcon: Material(
                              elevation: 0,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              child: Icon(Icons.wc, color: Colors.red),
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 13),
                          ),
                          validator: (text) {
                            if (text.isEmpty) {
                              return "Sexo inválido!";
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
                              child:
                                  Icon(Icons.arrow_upward, color: Colors.red),
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
                                  color: Colors.red),
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
                      child: Icon(Icons.email, color: Colors.red),
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
                      child: Icon(Icons.lock, color: Colors.red),
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
                      child: Icon(Icons.my_location, color: Colors.red),
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
                  maxLines: null,
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
                    color: Color(0xffff3a5a)),
                child: FlatButton(
                  child: Text(
                    "Criar Conta",
                    style: TextStyle(
                        color: Colors.white,
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
