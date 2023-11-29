import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  TextEditingController _textEditingController = TextEditingController();
  String text = '';
  void setting() {
    setState(() {
      text = _textEditingController.text;
    });
  }

  void change_blue() {
    setState(() {
      _color = Colors.blue;
    });
  }

  void change_pink() {
    setState(() {
      _color = Colors.pink;
    });
  }

  void change_12() {
    setState(() {
      fontsize = 12;
    });
  }

  void change_18() {
    setState(() {
      fontsize = 18;
    });
  }

  void change_style1() {
    setState(() {
      currentFontStyle = FontStyle.italic;
    });
  }

  void change_style2() {
    setState(() {
      currentFontStyle = FontStyle.normal;
    });
  }

  double fontsize = 10;
  Color _color = Colors.black;
  FontStyle currentFontStyle = FontStyle.normal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
                color: _color, fontSize: fontsize, fontStyle: currentFontStyle),
          ),
          Form(
              child: TextField(
            controller: _textEditingController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12))),
          )),
          ElevatedButton(
              onPressed: () {
                setting();
              },
              child: Text(
                'set',
                style: TextStyle(color: Colors.amber),
              )),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Drawer(
                    child: ListView(
                      padding: EdgeInsets.zero,
                      children: [
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: DrawerHeader(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.blue,
                            ),
                            child: Text(
                              'select color',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text('blue'),
                          onTap: () {
                            change_blue();
                          },
                        ),
                        ListTile(
                          title: Text('pink'),
                          onTap: () {
                            change_pink();
                          },
                        ),
                      ],
                    ),
                  ),
                  width: 150,
                  height: 150,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Drawer(
                    child: ListView(
                      padding: EdgeInsets.zero,
                      children: [
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: DrawerHeader(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.blue,
                            ),
                            child: Text(
                              'select size',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text('12'),
                          onTap: () {
                            change_12();
                          },
                        ),
                        ListTile(
                          title: Text('18'),
                          onTap: () {
                            change_18();
                          },
                        ),
                      ],
                    ),
                  ),
                  width: 150,
                  height: 150,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Drawer(
                    child: ListView(
                      padding: EdgeInsets.zero,
                      children: [
                        SizedBox(
                          width: 50,
                          height: 50,
                          child: DrawerHeader(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.blue,
                            ),
                            child: Text(
                              'select color',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text('italic'),
                          onTap: () {
                            change_style1();
                          },
                        ),
                        ListTile(
                          title: Text('normal'),
                          onTap: () {
                            change_style2();
                          },
                        ),
                      ],
                    ),
                  ),
                  width: 150,
                  height: 150,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
