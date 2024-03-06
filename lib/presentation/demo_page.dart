import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "Detección de tipos de dispositivos",
          style: GoogleFonts.openSans(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: const _GeneralView(),
    );
  }
}

class _GeneralView extends StatelessWidget {
  const _GeneralView();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TextBlockOne(),
        ListElements(),
      ],
    );
  }
}

class TextBlockOne extends StatelessWidget {
  const TextBlockOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            "Descripción",
          ),
          SizedBox(
            height: 10,
          ),
          Text(
              "En la aplicación de Simón, se contarán con diversos micro-frontEnds que respoderán de diversas formas ante la resolución y tamaño de pantalla del dispositivo donde se esta utilizando, por ejemplo, el micro-frontEnd de Simon-e App Travels tendrá una visualización diferente en smarthphones, en tablets y en web, con el fin de aprovechar el espacio disponible de pantalla."),
          SizedBox(
            height: 10,
          ),
          Text(
              "Si bien en el ecosistema IOS es fácil, esta detección puesto que los Iphone y los Ipads están claramente diferenciadas, no es el caso de los dispositivos mobiles."),
          SizedBox(
            height: 10,
          ),
          Text(
              "Para homogenizar y facilitar este tema es necesario generar un mecanismo común que nos permita hacer esta detección en cualquier micro-frontEnd."),
          SizedBox(
            height: 10,
          ),
          Text(
              "Agregar en el proyecto ___ un helper accesible desde cualquier micro-frontEnd que utilice este paquete, que realice esta verificación mediante el método."),
          Text(
              " isWideScreen: Devolverá true si se cumplen algunas de las siguientes condiciones:")
        ],
      ),
    );
  }
}

class ListElements extends StatelessWidget {
  const ListElements({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> listNames = [
      "Se está ejecutando en IOS y es un IPAD en modo horizontal.",
      "Se está ejecutando en Android, la resolución es mayor o igual a 992px y se está ejecutando en modo horizotal.",
      "Se está ejecutando en cualquier otro ambiente, el ancho de la ventana es mayor o igual a 992px",
    ];
    return ListView.builder(
      itemCount: listNames.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.radio_button_checked),
          title: Text(listNames[index]),
        );
      },
    );
  }
}
