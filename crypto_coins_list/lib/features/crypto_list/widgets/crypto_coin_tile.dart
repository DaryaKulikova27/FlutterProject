import 'package:flutter/material.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({
    Key? key,
    required this.coinName
  });

  final String coinName;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ListTile(
      leading: Image.asset(
        'assets/png/bitcoin.png',
        height: 40.0,
        width: 40.0,
        fit: BoxFit.cover,
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
  }
}