import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context){
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('Hola Mundo'),
      action: SnackBarAction(label: 'OK!', onPressed: (){}),
      duration: const Duration( seconds: 2 ),
    );

    ScaffoldMessenger.of(context).showSnackBar( snackbar );
  }

  void openDialog( BuildContext context ){

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Estas seguro??'),
        content: const Text('Eiusmod non proident ut velit proident laboris est. Proident anim mollit consectetur commodo eiusmod amet consequat eu enim tempor duis esse. Ipsum nisi deserunt et sit non in exercitation veniam. Elit cupidatat laboris adipisicing nostrud ad. Voluptate magna voluptate fugiat sunt do velit laborum reprehenderit esse minim voluptate consectetur enim. Proident anim culpa anim exercitation officia laborum est adipisicing esse dolore.'),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text('Cancelar'),
          ),

          FilledButton(
            onPressed: () => context.pop(),
            child: const Text('Aceptar'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars & Dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            FilledButton.tonal(
              onPressed: (){
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Nostrud reprehenderit nostrud id eiusmod consequat reprehenderit est in excepteur non. Nisi velit do fugiat culpa id id. Enim deserunt minim enim esse. Eu enim aute consequat eu eu labore labore id culpa. Proident enim ut fugiat do pariatur sunt aliqua laborum cupidatat veniam ea eu sunt dolor.')
                  ],
                );
              },
              child: const Text('Licencias usadas')
            ),

            FilledButton.tonal(
              onPressed: (){
                openDialog( context );
              },
              child: const Text('Mostrar Dialogos')
            ),

          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}