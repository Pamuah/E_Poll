import 'package:flutter/material.dart';

import '../const/themeExtension.dart';
import '../widget/revenue_card.dart';

class RevenueSummaryPage extends StatelessWidget {
  const RevenueSummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final extendedColors = Theme.of(context).extension<ExtraColors>()!;
    final colorscheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Revenue Summary',
          style: TextStyle(color: colorscheme.onPrimary),
        ),
        centerTitle: true,
        backgroundColor: extendedColors.darkGray,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Total Revenue Card
            SummaryCard(
              title: 'Total Revenue Generated',
              amount: '₵1,250.00',
              color: Colors.green.shade400,
              icon: Icons.attach_money,
            ),

            // Cost Per Vote Card
            SummaryCard(
              title: 'Cost Per Vote',
              amount: '₵0.50',
              color: Colors.blue.shade400,
              icon: Icons.monetization_on,
            ),

            // Platform Commission Card
            SummaryCard(
              title: 'Platform Commission',
              amount: '₵250.00',
              color: Colors.orange.shade400,
              icon: Icons.account_balance_wallet,
            ),

            // Withdrawable Balance Card
            SummaryCard(
              title: 'Withdrawable Balance',
              amount: '₵1,000.00',
              color: Colors.purple.shade400,
              icon: Icons.account_balance,
            ),
          ],
        ),
      ),
    );
  }
}
