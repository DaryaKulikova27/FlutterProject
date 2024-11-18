import 'package:crypto_coins_list/features/crypto_list/crypto_list.dart';
import '../features/crypto_coin/crypto_coin.dart';

final routes = {
  '/': (context) => const CryptoListScreen(title: 'CryptoCurrenciesList'),
  '/coins': (context) => const CryptoCoinScreen()
};