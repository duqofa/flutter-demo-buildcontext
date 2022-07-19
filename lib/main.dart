import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('#Demo BuildContext'),
        ),
        body: Center(
          child: Builder(
            builder: ((context) => ElevatedButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print('Parent\'s context is ${context.widget.toString()}');
                    }
                    _showSnackbar(context);
                  },
                  child: const Text(
                    'Show snackbar',
                  ),
                )),
          ),
        ),
      ),
    );
  }

  void _showSnackbar(BuildContext context) {
    const snackbar = SnackBar(
      content: Text('I\'m PhatDQ'),
    );
    Scaffold.of(context).showSnackBar(snackbar);
  }
}
