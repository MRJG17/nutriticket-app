import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  // Controladores para los campos de texto
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); // Regresa a la pantalla de login
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // Cambiado de center a start
          children: [
            const SizedBox(height: 40), // Espacio desde arriba

            // Título "Crear Cuenta"
            const Text(
              'Crear Cuenta',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500 , // Cambiado de w300 a bold
                fontStyle: FontStyle.italic,
                color: Colors.black,
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 40),

            // Campo de nombre completo
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Nombre completo',
                labelStyle: const TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.green),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Campo de correo electrónico
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Correo electrónico',
                labelStyle: const TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.green),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Campo de contraseña
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Contraseña',
                labelStyle: const TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.green),
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Botón "Crear Cuenta" verde
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Lógica de creación de cuenta
                  print('Nombre: ${_nameController.text}');
                  print('Email: ${_emailController.text}');
                  print('Password: ${_passwordController.text}');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Crear Cuenta',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Logos de Google y Facebook en horizontal
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo Google
                IconButton(
                  onPressed: () {
                    print('Registro con Google');
                  },
                  icon: Image.asset(
                    'assets/images/google.png',
                    width: 50,
                    height: 50,
                  ),
                ),
                const SizedBox(width: 30),

                // Logo Facebook
                IconButton(
                  onPressed: () {
                    print('Registro con Facebook');
                  },
                  icon: Image.asset(
                    'assets/images/facebook.png',
                    width: 50,
                    height: 50,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}