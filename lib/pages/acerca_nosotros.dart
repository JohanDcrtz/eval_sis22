import 'package:flutter/material.dart';

class acercanosotros extends StatefulWidget {
  const acercanosotros({Key? key}) : super(key: key);

  @override
  _acercanosotrosState createState() => _acercanosotrosState();
}

class _acercanosotrosState extends State<acercanosotros> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acerca de Nosotros'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Persona 1
              _buildPersona(
                'images/johan.jpg',
                'Johan Daniel',
                'Muñoz Cortez',
                'johan503@gmail.com',
              ),
              // Separador
              SizedBox(height: 20.0),
              // Persona 2
              _buildPersona(
                'images/carlos.jpg',
                'Carlos Samuel',
                'De Paz Villanueva',
                'carlos503@gmail.com',
              ),
              // Separador
              SizedBox(height: 20.0),
              // Persona 3
              _buildPersona(
                'images/miguel.jpg',
                'Miguel Antonio',
                'Toloza Alvarez',
                'miguel503@gmail.com',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPersona(
      String imagePath, String nombre, String apellido, String correo) {
    return Card(
      elevation: 5.0,
      margin: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.blue,
                    width: 2.0,
                  ),
                ),
                child: CircleAvatar(
                  backgroundImage: AssetImage(imagePath),
                  radius: 60.0,
                ),
              ),
              SizedBox(height: 10.0),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Nombre: $nombre',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Apellido: $apellido',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Correo: $correo',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: acercanosotros(),
  ));
}
