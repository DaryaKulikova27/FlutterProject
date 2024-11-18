import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:developer';

void main() {
  runApp(const CryptoCurrenciesListApp
());
}

class CryptoCurrenciesListApp extends StatelessWidget {
  const CryptoCurrenciesListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
        dividerColor: Colors.white24,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 67, 65, 65),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
          iconTheme: IconThemeData(color: Colors.white),
        ),
        listTileTheme: const ListTileThemeData(iconColor: Colors.white),
        primarySwatch: Colors.yellow,
        scaffoldBackgroundColor: const Color.fromARGB(255, 67, 65, 65),
        textTheme: TextTheme(
          bodyMedium: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 20
          ),
          labelSmall: TextStyle(
            color: Colors.white.withOpacity(0.6),
            fontWeight: FontWeight.w700,
            fontSize: 14
          )
        )
      ),
      routes: {
        '/': (context) => const CryptoListScreen(title: 'CryptoCurrenciesList'),
        '/coins': (context) => const CryptoCoinScreen()
      }
    );
  }
}

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key, required this.title});
  final String title;

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {

  void _incrementCounter() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder:(context, index) => const Divider(),
        itemBuilder: (context, i) { 
          const coinName = 'Bitcoin';
          return ListTile(
            leading: Image.asset(
              'assets/png/bitcoin.png', // Путь к изображению
              height: 40.0, // Задайте размер
              width: 40.0,
              fit: BoxFit.cover, // Укажите способ заполнения
            ),
            title: Text(
              coinName, 
              style: theme.textTheme.bodyMedium,
            ),
            subtitle: Text(
              '20000\$', 
              style: theme.textTheme.labelSmall
            ),
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            onTap: () => {
              Navigator.of(context).pushNamed(
                '/coins',
                arguments: coinName
              ),
            }
          );
        },
      ), 
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), 
    );
  }
}


class CryptoCoinScreen extends StatefulWidget {
  const CryptoCoinScreen({super.key});

  @override
  State<StatefulWidget> createState() => _CryptoCoinScreen();
}

class _CryptoCoinScreen extends State<CryptoCoinScreen> {
  String? coinName;

@override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    assert(args != null && args is String, 'You must provide String args');
    coinName = args as String;
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(coinName ?? '...'),
      ),
    );
  }
}
