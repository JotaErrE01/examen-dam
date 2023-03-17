import 'package:examen_dam/screens/ruiz_jonathan_map_screen.dart';
import 'package:examen_dam/screens/ruiz_jonathan_register_screen.dart';
import 'package:flutter/material.dart';

class RuizJonathanLoginForm extends StatelessWidget {
  const RuizJonathanLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 300,
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            // validator: (value) => EmailValidator.validate(value!)
            //     ? null
            //     : "Por favor ingrese un correo válido",
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
            obscureText: true,
            style: const TextStyle(
              color: Colors.white,
            ),
            decoration: const InputDecoration(
              labelText: 'Contraseña',
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RuizJonathanMapScreen(),
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
              child: const Text('Iniciar sesión'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                debugPrint('Iniciar sesión');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RuizJonathanRegisterScreen(),
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
              child: const Text('Nuevo Usuario'),
            )
          ]),
        ),
        const SizedBox(height: 20)
      ],
    );
  }
}
