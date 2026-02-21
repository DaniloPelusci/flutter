import 'package:flutter/material.dart';

void main() {
  runApp(const BoasVindasApp());
}

class BoasVindasApp extends StatelessWidget {
  const BoasVindasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bem-vindo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF4876FF)),
        useMaterial3: true,
      ),
      home: const TelaBemVindo(),
    );
  }
}

class TelaBemVindo extends StatefulWidget {
  const TelaBemVindo({super.key});

  @override
  State<TelaBemVindo> createState() => _TelaBemVindoState();
}

class _TelaBemVindoState extends State<TelaBemVindo> {
  String mensagemAcao = ' ';

  @override
  Widget build(BuildContext context) {
    const fundo = Color(0xFFF5F8FF);
    const tituloCor = Color(0xFF253858);
    const subtituloCor = Color(0xFF445678);
    const botaoCor = Color(0xFF4876FF);

    return Scaffold(
      backgroundColor: fundo,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Bem-vindo!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: tituloCor,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Vamos começar sua jornada por aqui.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: subtituloCor,
                  ),
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      mensagemAcao =
                          'Tudo pronto! Agora você pode seguir para a próxima etapa.';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: botaoCor,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 26,
                      vertical: 10,
                    ),
                    textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: const Text('Começar'),
                ),
                const SizedBox(height: 18),
                Text(
                  mensagemAcao,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                    color: tituloCor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
