import 'package:flutter/material.dart';

class SavingVault extends StatefulWidget {
  const SavingVault({super.key});

  @override
  State<SavingVault> createState() => _SavingVaultState();
}

class _SavingVaultState extends State<SavingVault> {
  Widget vaulHistory({
    required String Title,
    required String Subtitle,
    required String amount,
    required IconData icon,
    Color ? color,
  }) {
    return SizedBox(
      width: 320,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(                       // ← this is the fix
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: Icon(icon, size: 24),
                  title: Text(
                    Title,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF1A1C1C)),
                  ),
                  subtitle: Text(
                    Subtitle,                 // ← was Title
                    style: const TextStyle(fontSize: 12, color: Color(0xFF3C4A3D)),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Text(
                amount,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold,  color: Color(0xFF006D33),),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back, color: Color(0xFF006D33)),
            ),

            const Text(
              'CashPay',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFF006D33),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),

        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.receipt_long)),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 24, bottom: 64),
        child: Center(
          child: Column(
            children: [
              Container(
                width: 320,
                // height: 381.6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Emergency Vault',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1A1C1C),
                      ),
                    ),
                    Text(
                      'Keeep it safe and watch it grow',
                      style: TextStyle(fontSize: 16, color: Color(0xFF3C4A3D)),
                    ),
                    SizedBox(height: 24),
                    Container(
                      height: 301.6,
                      width: 320,
                      color: Color(0xFF1A1C1C),
                      padding: EdgeInsets.only(
                        left: 24,
                        right: 24,
                        top: 24,
                        bottom: 24,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Balance',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFFE2E2E2),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            r'$36,313.00',
                            style: TextStyle(
                              fontSize: 48,
                              color: Color(0xFFE2E2E2),
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                          ),
                          SizedBox(height: 22),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                r'Progress to $15% Goal',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFFE2E2E2),
                                ),
                              ),
                              Text(
                                r'83%',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF63FF94),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 2),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(
                              10,
                            ), // rounded ends
                            child: LinearProgressIndicator(
                              value: 0.65, // 65% filled (0.0 to 1.0)
                              minHeight: 8, // line thickness
                              color: Color(0xFF63FF94), // filled part
                              backgroundColor: Color(0xFFE2E2E2), // empty part
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Container(
                                width: 127.2,
                                height: 81.6,
                                padding: EdgeInsets.only(
                                  left: 16,
                                  right: 16,
                                  top: 12,
                                  bottom: 12,
                                ),
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  color: Colors.amberAccent,
                                ),
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.add, size: 35),
                                      Text(
                                        'Add Funds',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 16),
                              Container(
                                width: 127.2,
                                height: 81.6,
                                padding: EdgeInsets.only(
                                  left: 16,
                                  right: 16,
                                  top: 12,
                                  bottom: 12,
                                ),
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  color: Colors.white,
                                ),
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.edit),
                                      Text(
                                        'Edit Goal',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

                          //vaulHistory(Title: Title, Subtitle: Subtitle, icon: icon)
                        ],
                      ),
                    ),
                    SizedBox(height: 48),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Vault History',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0XFF1A1C1C),
                          ),
                        ),
                        Text(
                          'View All',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF006D33),
                          ),
                        ),
                      ],
                    ),
                    vaulHistory(Title: 'Auto-Transfer', Subtitle: 'Today,09:00 AM', amount: r' +$2,444', icon: Icons.arrow_upward),
                    vaulHistory(Title: 'Withdrawal to checking', Subtitle: 'Today,09:00 AM', amount: r'-$2,444', icon: Icons.arrow_downward)

                  ],
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
