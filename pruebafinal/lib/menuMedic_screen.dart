import 'package:flutter/material.dart';
import 'lista_screen.dart';
import 'historial_screen.dart';
import 'citas_creen.dart';
import 'perfil_screen.dart';

class menuMedicScreen extends StatefulWidget {
  const menuMedicScreen({super.key});

  @override
  State<menuMedicScreen> createState() => _menuMedicScreenState();
}

class _menuMedicScreenState extends State<menuMedicScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const listaScreen(),
    const historialScreen(),
    const citasScreen(),
    const perfilScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Medico',
          style: TextStyle(
            color: Colors.blueAccent,
            fontWeight: FontWeight.w700,
          ),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.medical_services, color: Colors.black,),
            label: 'Citas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history_sharp, color: Colors.black,),
            label: 'Historial',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_3, color: Colors.black,),
            label: 'Perfil',
          ),
        ],
        selectedItemColor: Colors.blueGrey,
      ),
    );
  }
}