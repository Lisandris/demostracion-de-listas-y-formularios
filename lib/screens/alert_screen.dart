import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

    void displayDialoIos( BuildContext context){

      showCupertinoDialog(
        barrierDismissible: false,
        context: context, 
        builder: ( context ){
          return CupertinoAlertDialog(
            title: const Text('Hola'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const[
                Text('Este es el contenido de la alerta'),
                SizedBox( height: 10 ),
                FlutterLogo( size: 100,)

              ],
            ),
            actions:[

              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text( 'Cancelar', style: TextStyle( color: Colors.red))
              ),

              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text( 'Ok')
              )

            ],
          );
        }
      );

    }

   void displayDialogAndroid( BuildContext context) {

      showDialog(
        barrierDismissible: false,
        context: context, 
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Hola'),
            shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(15) ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const[
                Text('Este es el contenido de la alerta'),
                SizedBox( height: 10 ),
                FlutterLogo( size: 100,)

              ],
            ),
            actions:[

              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text( 'Cancelar')
              )

            ],
          );

        }
      );

      
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
          // style: ElevatedButton.styleFrom(
          //   primary: Colors.pink,
          //   shape: const StadiumBorder(),
          //   elevation: 0
          // ),
          child: const Padding(
            padding: EdgeInsets.symmetric( horizontal: 20, vertical: 15 ),
            child: Text('Mostrar Alerta', style: TextStyle( fontSize: 16 )),
          ),
           // onPressed: () => displayDialogAndroid( context )
          onPressed: () => Platform.isAndroid 
              ? displayDialogAndroid( context )
              : displayDialoIos( context )
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.close),
        onPressed: () => Navigator.pop(context)
              
      ),
    );
  }
}