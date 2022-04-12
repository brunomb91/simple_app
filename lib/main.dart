import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
    debugShowCheckedModeBanner: false,
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);
  TextEditingController get contr => TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Insira o Texto'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
            child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: TextField(
                  controller: contr,
                  decoration:
                      InputDecoration(labelText: "Insira aqui sua mensagem: "),
                )),
                SizedBox(
                  width: 8,
                ),
                ElevatedButton(
                  child: const Text('Próximo'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SecondRoute(
                                word: contr.text,
                              )),
                    );
                  },
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
          ],
        )),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key, required this.word}) : super(key: key);

  final String word;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Veja o texto'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(word),
          ],
        ),
      ),
    );
  }
}
