import 'package:flutter/material.dart';

class Bankpage extends StatefulWidget {
  const Bankpage({super.key});

  @override
  State<Bankpage> createState() => _BankpageState();
}

class _BankpageState extends State<Bankpage> {
  Widget availablebank({
    required String bankname,
    IconData? bankicon,
    required String bankimage,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black26),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(bankicon, size: 50, color: Colors.green.shade900),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              bankimage,
              width: 50,
              height: 50,
              fit: BoxFit.contain,
              cacheHeight: 72,
              cacheWidth: 72,
            ),
          ),
          const SizedBox(height: 10),

          Text(
            bankname,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;

          if (width < 600) {
            return _mobileview(context);
          } else {
            return _desktopview(context);
          }
        },
      ),
    );
  }

  Widget _mobileview(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shield_rounded, color: Colors.green.shade900),
          ),
        ],
        leading: Icon(Icons.arrow_back, color: Colors.green.shade900),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Divider(height: 1, thickness: 1, color: Colors.black26),
        ),
        title: Text(
          "Secure Connection ",
          style: TextStyle(
            color: Colors.green.shade900,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            //child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Select Your",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Bank",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Connect your institution to enable fast,",
                  style: TextStyle(fontSize: 16),
                ),
                Text("secure transfers.", style: TextStyle(fontSize: 16)),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search Institutions...",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),

                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Colors.red,
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: SingleChildScrollView(
                    child: GridView.count(
                      shrinkWrap: true,
                      crossAxisSpacing: 10,
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      children: [
                        availablebank(
                          bankname: "Chase",
                          bankimage: "images/Chase-Bank-Logo.png",
                        ),
                        availablebank(
                          bankname: "Bank of America",
                          bankimage: "images/BAC-e7995069.png",
                        ),
                        availablebank(
                          bankname: "Wells Fargo",
                          bankimage: "images/well fargo.png",
                        ),
                        availablebank(
                          bankname: "Citibank",
                          bankimage: "images/Citibank-Logo-PNG.png",
                        ),
                        availablebank(
                          bankname: "Capital One",
                          bankimage: "images/Capital one1.png",
                        ),
                        availablebank(
                          bankname: "PNC",
                          bankimage: "images/PNC bank.png",
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                // Spacer(),
                Text(
                  "Don't see your bank? Search all institutions",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 12),
                Column(
                  children: [
                    Divider(height: 1, thickness: 1, color: Colors.black26),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.lock_rounded, color: Colors.green.shade900),
                        Text(
                          "256-bit Bank-Grade Encryption",
                          style: TextStyle(color: Colors.green),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(
                      "© 2026 Precision Finance. Encrypted & Secure.",
                      style: TextStyle(color: Colors.green),
                    ),
                    SizedBox(height: 7),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text("Privacy Policy"),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text("Security Terms"),
                        ),
                        TextButton(onPressed: () {}, child: Text("Help")),
                      ],
                      //SizedBox(height: 10),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      //  ),
    );
  }

  Widget _desktopview(BuildContext context) {
    return Scaffold();
  }
}
