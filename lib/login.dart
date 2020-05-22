import 'package:flutter/material.dart';

class FormLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: <
              Widget>[
            Text(
              "QR-CODE",
              style: TextStyle(
                fontSize: 50,
                fontFamily: "Serif",
                color: Colors.white,
                height: 3.0,
              ),
            ),
            Text(
              "SCANNER",
              style: TextStyle(
                fontSize: 40,
                //fontFamily: "Serif",
                color: Colors.white,
                height: 0.5,
              ),
            ),
            Text(
              "A    C    A    R    A    K    U     .    C    O    M",
              style: TextStyle(
                fontSize: 15,
                //fontFamily: "Serif",
                color: Colors.white,
                height: 1.5,
              ),
            ),
            SizedBox(
              height: 25, //punya yg kuning
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(30)),
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.8,
              child:
                  Stack(alignment: Alignment.bottomCenter, children: <Widget>[
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                            top: 10, right: 10, bottom: 10, left: 10),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.08,
                          width: MediaQuery.of(context).size.width - 40,
                          child: Material(
                            elevation: 10,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                topLeft: Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 20, right: 20, top: 10, bottom: 10),
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: "Email",
                                  labelStyle: TextStyle(
                                      color: Colors.black45, fontSize: 14),
                                ),
                              ),
                            ),
                          ),
                        )),
                    Padding(
                        padding:
                            EdgeInsets.only(right: 10, bottom: 10, left: 10),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.08,
                          width: MediaQuery.of(context).size.width - 40,
                          child: Material(
                            elevation: 10,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                topLeft: Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 20, right: 20, top: 10, bottom: 10),
                              child: TextField(
                                obscureText: true,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: "Password",
                                  labelStyle: TextStyle(
                                      color: Colors.black45, fontSize: 14),
                                ),
                              ),
                            ),
                          ),
                        )),
                    Padding(
                        padding:
                            EdgeInsets.only(right: 10, bottom: 10, left: 10),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.08,
                          width: MediaQuery.of(context).size.width - 40,
                          child: Material(
                            elevation: 10,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                topLeft: Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 20, right: 20, top: 10, bottom: 10),
                              child: TextField(
                                obscureText: true,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  labelText: "ID Acara",
                                  labelStyle: TextStyle(
                                      color: Colors.black45, fontSize: 14),
                                ),
                              ),
                            ),
                          ),
                        )),
                    Row(
                        //alignment: Alignment.centerLeft,
                        children: <Widget>[
                          Checkbox(
                            onChanged: (_) {},
                            value: true,
                          ),
                          Expanded(
                              child: Text(
                            "Saya telah membaca Kebijakan Privasi dari Layanan ini",
                            style: TextStyle(),
                          )),
                        ]),
                    SizedBox(
                      height: 35,
                    ),
                    roundedRectButton('M A S U K', [
                      Colors.black,
                      Colors.black,
                    ]),
                  ],
                ),
              ]),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(200),
                  topLeft: Radius.circular(200),
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                ),
              ),
              height: 100,
              width: 600,
            ),
          ]),
        ),
      ),
    );
  }
}

Widget roundedRectButton(String title, List<Color> gradient) {
  return Builder(builder: (BuildContext mContext) {
    return InkWell(
      onTap: null,
      splashColor: Colors.black,
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(mContext).size.height * 0.06,
        width: MediaQuery.of(mContext).size.width / 2,
        decoration: ShapeDecoration(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          gradient: LinearGradient(
              colors: gradient,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: Text(title,
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500)),
      ),
    );
  });
}
