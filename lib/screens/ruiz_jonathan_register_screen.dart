import 'package:examen_dam/widgets/ruiz_jonathan_register_form.dart';
import 'package:flutter/material.dart';

class RuizJonathanRegisterScreen extends StatelessWidget {
  const RuizJonathanRegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF0F2027),
              Color(0xFF203A43),
              Color(0xFF2C5364),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(height: 80),
              Text(
                'Formulario de Nuevo Usuario',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 50),
              RuizJonathanRegisterForm()
            ],
          ),
        ),
      ),
    );
  }
}
