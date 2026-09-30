import 'package:flutter/material.dart';

class Bankdetails extends StatefulWidget {
  const Bankdetails({super.key});

  @override
  State<Bankdetails> createState() => _BankdetailsState();
}

class _BankdetailsState extends State<Bankdetails> {
  int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LayoutBuilder(
        builder: (context, Constrainst) {
          final width = Constrainst.maxWidth;
          return width < 600 ? _mobileview(context) : _desktopview(context);
        },
      ),
    );
  }

  Widget Popularbanks({required String bankname, required String image, required String subtile}) {
    return Column(

      children: [

        Card.outlined(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8),
                child: ListTile(
                  leading: IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      image,
                      width: 50,
                      height: 50,
                      fit: BoxFit.contain,
                      cacheHeight: 72,
                      cacheWidth: 72,
                    ),
                  ),
                  title: Text(bankname,style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle:   Text(subtile),
                  trailing: Icon(Icons.chevron_right_outlined),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _mobileview(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.close)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.person))],
        title: Text(
          "Select Institution",
          style: TextStyle(color: Colors.green),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Divider(height: 1, thickness: 1, color: Colors.black26),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.grid_view, size: 14),
                      label: const Text(
                        "Grid View",
                        style: TextStyle(fontSize: 12),
                      ),
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                    ),

                    const SizedBox(width: 5,),

                    OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.shield,
                        size: 14,
                        color: Colors.green,
                      ),
                      label: const Text(
                        "256-Bit Encrypted",
                        style: TextStyle(fontSize: 12, color: Colors.green),
                      ),
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 4,
                        ),
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hint: Text("Search banks,credit unions.."),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 1,
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() => isSelected = 0);
                        },
                        style: OutlinedButton.styleFrom(
                          backgroundColor: isSelected == 0
                              ? Colors.black
                              : Colors.white,
                          foregroundColor: isSelected == 0
                              ? Colors.white
                              : Colors.black,
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                        ),
                        child: const Text(
                          "All",
                          maxLines: 1,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),

                    const SizedBox(width: 10),

                    Flexible(
                      flex: 1,
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() => isSelected = 1);
                        },
                        style: OutlinedButton.styleFrom(
                          backgroundColor: isSelected == 1
                              ? Colors.black
                              : Colors.white,
                          foregroundColor: isSelected == 1
                              ? Colors.white
                              : Colors.black,
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                        ),
                        child: const Text(
                          "Popular",
                          maxLines: 1,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),

                    const SizedBox(width: 5),

                    Flexible(
                      flex: 1,
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() => isSelected = 2);
                        },
                        style: OutlinedButton.styleFrom(
                          backgroundColor: isSelected == 2
                              ? Colors.black
                              : Colors.white,
                          foregroundColor: isSelected == 2
                              ? Colors.white
                              : Colors.black,
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                        ),
                        child: const Text(
                          "National",
                          maxLines: 1,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),

                    const SizedBox(width: 5),

                    Flexible(
                      flex: 2, // More room because the text is longer
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() => isSelected = 3);
                        },
                        style: OutlinedButton.styleFrom(
                          backgroundColor: isSelected == 3
                              ? Colors.black
                              : Colors.white,
                          foregroundColor: isSelected == 3
                              ? Colors.white
                              : Colors.black,
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                        ),
                        child: const FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            "Credit Unions",
                            maxLines: 1,
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("10 verified institutions",style: TextStyle(color: Colors.black),),
                        Align(
                            alignment: Alignment(-1,0),
                            child:Text ("available",style: TextStyle(color: Colors.black),))
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        Text("Instant",style: TextStyle(color: Colors.green),),
                        Text("Auth",style: TextStyle(color: Colors.green),)
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Stack(
                  clipBehavior: Clip.none, // lets the badge stick out past the card
                  children: [
                    Popularbanks(bankname: "Chase",subtile: "National Bank, Checking & Saving", image: "images/Chase-Bank-Logo.png"),
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text(
                          'Popular',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),






                Popularbanks(bankname: "Bank of America",subtile: "Personal & Bussiness", image: "images/BAC-e7995069.png"),
                Popularbanks(bankname: "Well Fargo",subtile: "National Banking", image: "images/well fargo.png"),
                Popularbanks(bankname: "Citibank",subtile: "Retail Banking & Wealth", image: "images/Citibank-Logo-PNG.png"),
                Popularbanks(bankname: "Capital One",subtile: "360 checking & Credit", image: "images/Capital one1.png"),
                Popularbanks(bankname: "PNC Bank",subtile: "National Bank, Checking & Saving", image: "images/PNC bank.png"),
                Popularbanks(bankname: "TD Bank",subtile: "National Bank, Checking & Saving", image: "images/Chase-Bank-Logo.png"),
                Popularbanks(bankname: "US Bank",subtile: "National Bank, Checking & Saving", image: "images/us-bank.png"),
                Popularbanks(bankname: "Charles Schwab",subtile: "National Bank, Checking & Saving", image: "images/charles schwab.png"),
                Popularbanks(bankname: "Ally Bank",subtile: "National Bank, Checking & Saving", image: "images/ally bank.png"),



              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _desktopview(BuildContext context) {
    return Placeholder();
  }
}
