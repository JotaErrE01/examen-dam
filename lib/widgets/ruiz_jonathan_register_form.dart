import 'package:examen_dam/screens/ruiz_jonathan_login_screen.dart';
import 'package:flutter/material.dart';

class RuizJonathanRegisterForm extends StatefulWidget {
  const RuizJonathanRegisterForm({super.key});

  @override
  RuizJonathanRegisterFormState createState() =>
      RuizJonathanRegisterFormState();
}

class RuizJonathanRegisterFormState extends State<RuizJonathanRegisterForm> {
  // creaa variable para el formulario
  final TextEditingController usuario = TextEditingController();
  final TextEditingController nombre = TextEditingController();
  final TextEditingController apellidos = TextEditingController();
  final TextEditingController telefono = TextEditingController();
  final TextEditingController direccion = TextEditingController();
  final TextEditingController clave = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 300,
          child: TextFormField(
            controller: usuario,
            keyboardType: TextInputType.emailAddress,
            style: const TextStyle(
              color: Colors.white,
            ),
            decoration: const InputDecoration(
              labelText: 'Usuario',
              labelStyle: TextStyle(
                color: Colors.white,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
        SizedBox(
          width: 300,
          child: TextFormField(
            controller: nombre,
            obscureText: true,
            style: const TextStyle(
              color: Colors.white,
            ),
            decoration: const InputDecoration(
              labelText: 'Nombre',
              labelStyle: TextStyle(
                color: Colors.white,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
        SizedBox(
          width: 300,
          child: TextFormField(
            controller: apellidos,
            obscureText: true,
            style: const TextStyle(
              color: Colors.white,
            ),
            decoration: const InputDecoration(
              labelText: 'Apellidos',
              labelStyle: TextStyle(
                color: Colors.white,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
        SizedBox(
          width: 300,
          child: TextFormField(
            controller: telefono,
            obscureText: true,
            style: const TextStyle(
              color: Colors.white,
            ),
            decoration: const InputDecoration(
              labelText: 'Telefono',
              labelStyle: TextStyle(
                color: Colors.white,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
        SizedBox(
          width: 300,
          child: TextFormField(
            controller: direccion,
            obscureText: true,
            style: const TextStyle(
              color: Colors.white,
            ),
            decoration: const InputDecoration(
              labelText: 'Direccion',
              labelStyle: TextStyle(
                color: Colors.white,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 30),
        SizedBox(
          width: 300,
          child: TextFormField(
            controller: clave,
            obscureText: true,
            style: const TextStyle(
              color: Colors.white,
            ),
            decoration: const InputDecoration(
              labelText: 'Clave',
              labelStyle: TextStyle(
                color: Colors.white,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 50),
        SizedBox(
          width: 200,
          child: Column(children: [
            ElevatedButton(
              onPressed: () {
                debugPrint('Usuario: ${usuario.text}');
                debugPrint('Nombre: ${nombre.text}');
                debugPrint('Apellidos: ${apellidos.text}');
                debugPrint('Telefono: ${telefono.text}');
                debugPrint('Direccion: ${direccion.text}');
                debugPrint('Clave: ${clave.text}');

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RuizJonathanLoginScreen(),
                  ),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.purple,
                ),
                textStyle: MaterialStateProperty.all<TextStyle>(
                  const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 5,
                  ),
                ),
              ),
              child: const Text('Guardar Usuario'),
            ),
          ]),
        ),
        const SizedBox(height: 20)
      ],
    );
  }
}
