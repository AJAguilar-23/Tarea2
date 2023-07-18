import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

const numero = "+504 9902-9311";

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(35),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.pinkAccent[400],
              child: const Text('P',
                  style: TextStyle(fontSize: 55, color: Colors.white)),
            ),
          ),
          const Text('Pascualillo', style: TextStyle(fontSize: 25)),
          const SizedBox(height: 20),
          Container(
            height: 0.5,
            width: double.infinity,
            color: Colors.deepPurple[300],
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            children: [
              SizedBox(
                width: 60,
              ),
              Column(children: [
                Icon(Icons.phone_outlined),
                SizedBox(width: 10),
                Text('Llamar'),
              ]),
              SizedBox(
                width: 40,
              ),
              Column(children: [
                Icon(Icons.message_outlined),
                SizedBox(width: 10),
                Text('Mensaje de texto'),
              ]),
              SizedBox(
                width: 40,
              ),
              Column(children: [
                Icon(Icons.videocam_outlined),
                SizedBox(width: 10),
                Text('Video'),
              ]),
            ],
          ),
          const SizedBox(height: 15),
          Container(
            height: 0.5,
            width: double.infinity,
            color: Colors.deepPurple[300],
          ),
          const Padding(
            padding: EdgeInsets.all(15),
            child: Card(
                color: Colors.white70,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Informacion de contacto',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                      ListTile(
                        title: Text(numero),
                        subtitle: Text('Celular'),
                        leading: Icon(Icons.phone_outlined),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.videocam_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(Icons.message_outlined),
                          ],
                        ),
                        contentPadding: EdgeInsets.all(0),
                        minLeadingWidth: 0,
                      ),
                      ListTile(
                        title: Text("Enviar mensaje a $numero"),
                        leading: Icon(Icons.messenger_sharp),
                        contentPadding: EdgeInsets.all(0),
                      ),
                      ListTile(
                        title: Text("Llamar a $numero"),
                        leading: Icon(Icons.messenger_sharp),
                        contentPadding: EdgeInsets.all(0),
                      ),
                      ListTile(
                        title: Text("Video llamar a $numero"),
                        leading: Icon(Icons.messenger_sharp),
                        contentPadding: EdgeInsets.all(0),
                      ),
                      ListTile(
                        title: Text("Mensaje a $numero"),
                        leading: Icon(Icons.telegram),
                        contentPadding: EdgeInsets.all(0),
                      ),
                      ListTile(
                        title: Text("Llamada de voz a a $numero"),
                        leading: Icon(Icons.telegram),
                        contentPadding: EdgeInsets.all(0),
                      ),
                      ListTile(
                        title: Text("Videollamar al $numero"),
                        leading: Icon(Icons.telegram),
                        contentPadding: EdgeInsets.all(0),
                      ),
                    ],
                  ),
                )),
          )
        ]),
      ),
    );
  }
}
