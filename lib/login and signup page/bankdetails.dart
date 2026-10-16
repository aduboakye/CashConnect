import 'package:flutter/material.dart';

// ---------- Data ----------
enum BankType { national, creditUnion }

class Bank {
  const Bank({
    required this.name,
    required this.subtitle,
    required this.image,
    this.type = BankType.national,
    this.popular = false,
    this.fast = false,
  });

  final String name;
  final String subtitle;
  final String image;
  final BankType type;
  final bool popular;
  final bool fast;
}

const _banks = [
  Bank(
    name: 'Chase',
    subtitle: 'National Bank, Checking & Saving',
    image: 'images/Chase-Bank-Logo.png',
    popular: true,
    fast: true,
  ),
  Bank(
    name: 'Bank of America',
    subtitle: 'Personal & Business',
    image: 'images/BAC-e7995069.png',
    popular: true,
    fast: true,
  ),
  Bank(
    name: 'Wells Fargo',
    subtitle: 'National Banking',
    image: 'images/well fargo.png',
    popular: true,
  ),
  Bank(
    name: 'Citibank',
    subtitle: 'Retail Banking & Wealth',
    image: 'images/Citibank-Logo-PNG.png',
    popular: true,
  ),
  Bank(
    name: 'Capital One',
    subtitle: '360 Checking & Credit',
    image: 'images/Capital one1.png',
    popular: true,
  ),
  Bank(
    name: 'PNC Bank',
    subtitle: 'National Bank, Checking & Saving',
    image: 'images/PNC bank.png',
  ),
  Bank(
    name: 'TD Bank',
    subtitle: 'National Bank, Checking & Saving',
    image: 'images/Chase-Bank-Logo.png', // TODO: replace with the TD Bank logo
  ),
  Bank(
    name: 'US Bank',
    subtitle: 'National Bank, Checking & Saving',
    image: 'images/us-bank.png',
  ),
  Bank(
    name: 'Charles Schwab',
    subtitle: 'National Bank, Checking & Saving',
    image: 'images/charles schwab.png',
  ),
  Bank(
    name: 'Ally Bank',
    subtitle: 'National Bank, Checking & Saving',
    image: 'images/ally bank.png',
  ),
];

const _filters = ['All', 'Popular', 'National', 'Credit Unions'];

// ---------- Page ----------
class Bankdetails extends StatefulWidget {
  const Bankdetails({super.key});

  @override
  State<Bankdetails> createState() => _BankdetailsState();
}

class _BankdetailsState extends State<Bankdetails> {
  // State lives here, so switching between mobile and desktop keeps it.
  int isSelected = 0;
  bool showGrid = false;
  String query = '';

  List<Bank> get visibleBanks {
    return _banks.where((b) {
      final matchesFilter = switch (isSelected) {
        1 => b.popular,
        2 => b.type == BankType.national,
        3 => b.type == BankType.creditUnion,
        _ => true,
      };
      final matchesSearch = b.name.toLowerCase().contains(query.toLowerCase());
      return matchesFilter && matchesSearch;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        return width < 600
            ? _mobileview(context)
            : _desktopview(context, width);
      },
    );
  }

  // ---------- Shared app bar ----------
  PreferredSizeWidget _appBar() {
    return AppBar(
      leading: IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.person))],
      title: const Text(
        'Select Institution',
        style: TextStyle(color: Colors.green),
      ),
      centerTitle: true,
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(1.0),
        child: Divider(height: 1, thickness: 1, color: Colors.black26),
      ),
    );
  }

  // ---------- Mobile: single column ----------
  Widget _mobileview(BuildContext context) {
    final banks = visibleBanks;
    return Scaffold(
      appBar: _appBar(),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [_gridToggle(), _encryptedBadge()],
            ),
            const SizedBox(height: 15),
            _searchField(),
            const SizedBox(height: 12),
            Row(
              children: [
                for (var i = 0; i < _filters.length; i++) ...[
                  if (i > 0) const SizedBox(width: 6),
                  Flexible(flex: i == 3 ? 2 : 1, child: _filterButton(i)),
                ],
              ],
            ),
            const SizedBox(height: 15),
            _statsRow(banks.length),
            const SizedBox(height: 10),
            if (banks.isEmpty)
              const _EmptyState()
            else if (showGrid)
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: banks.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  mainAxisExtent: 130,
                ),
                itemBuilder: (_, i) => BankGridCard(bank: banks[i]),
              )
            else
              for (final bank in banks) BankTile(bank: bank),
          ],
        ),
      ),
    );
  }

  // ---------- Tablet / desktop: toolbar on top, grid that adds columns as it widens ----------
  Widget _desktopview(BuildContext context, double width) {
    final banks = visibleBanks;
    final padding = width >= 900 ? 32.0 : 20.0;

    return Scaffold(
      appBar: _appBar(),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1100),
            child: Padding(
              padding: EdgeInsets.all(padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(child: _searchField()),
                      const SizedBox(width: 12),
                      _gridToggle(),
                      const SizedBox(width: 8),
                      _encryptedBadge(),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: [
                            for (var i = 0; i < _filters.length; i++)
                              _filterButton(i),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16),
                      Text('${banks.length} verified institutions available'),
                      const SizedBox(width: 8),
                      const Text(
                        'Instant Auth',
                        style: TextStyle(color: Colors.green),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: banks.isEmpty
                        ? const _EmptyState()
                        : showGrid
                        ? GridView.builder(
                            itemCount: banks.length,
                            gridDelegate:
                                const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent:
                                      240, // more columns as the screen widens
                                  mainAxisExtent: 140,
                                  mainAxisSpacing: 12,
                                  crossAxisSpacing: 12,
                                ),
                            itemBuilder: (_, i) => BankGridCard(bank: banks[i]),
                          )
                        : GridView.builder(
                            itemCount: banks.length,
                            gridDelegate:
                                const SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent:
                                      420, // 2 columns on tablet, 3 on laptop
                                  mainAxisExtent: 92,
                                  mainAxisSpacing: 4,
                                  crossAxisSpacing: 12,
                                ),
                            itemBuilder: (_, i) => BankTile(bank: banks[i]),
                          ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // ---------- Small reusable pieces ----------
  Widget _gridToggle() {
    return OutlinedButton.icon(
      onPressed: () => setState(() => showGrid = !showGrid),
      icon: Icon(showGrid ? Icons.view_list : Icons.grid_view, size: 14),
      label: Text(
        showGrid ? 'List View' : 'Grid View',
        style: const TextStyle(fontSize: 12),
      ),
      style: _pillStyle(),
    );
  }

  Widget _encryptedBadge() {
    return OutlinedButton.icon(
      onPressed: () {},
      icon: const Icon(Icons.shield, size: 14, color: Colors.green),
      label: const Text(
        '256-Bit Encrypted',
        style: TextStyle(fontSize: 12, color: Colors.green),
      ),
      style: _pillStyle(),
    );
  }

  ButtonStyle _pillStyle() {
    return OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      minimumSize: Size.zero,
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );
  }

  Widget _searchField() {
    return TextField(
      onChanged: (value) => setState(() => query = value),
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        hintText: 'Search banks, credit unions...',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }

  Widget _filterButton(int i) {
    final selected = isSelected == i;
    return OutlinedButton(
      onPressed: () => setState(() => isSelected = i),
      style: OutlinedButton.styleFrom(
        backgroundColor: selected ? Colors.black : Colors.white,
        foregroundColor: selected ? Colors.white : Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 12),
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          _filters[i],
          maxLines: 1,
          style: const TextStyle(fontSize: 12),
        ),
      ),
    );
  }

  Widget _statsRow(int count) {
    return Row(
      children: [
        Expanded(child: Text('$count verified institutions available')),
        const SizedBox(width: 10),
        const Text('Instant Auth', style: TextStyle(color: Colors.green)),
      ],
    );
  }
}

// ---------- Bank cards ----------

class BankLogo extends StatelessWidget {
  const BankLogo({super.key, required this.image, this.size = 50});
  final String image;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Image.asset(
        image,
        fit: BoxFit.contain,
        cacheWidth: 120,
        // Shows an icon instead of crashing if an image path is wrong
        errorBuilder: (_, __, ___) => const Icon(Icons.account_balance),
      ),
    );
  }
}

class FastBadge extends StatelessWidget {
  const FastBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Text(
        'Fast',
        style: TextStyle(color: Colors.white, fontSize: 12),
      ),
    );
  }
}

// List style: logo, name, subtitle, badge, arrow
class BankTile extends StatelessWidget {
  const BankTile({super.key, required this.bank});
  final Bank bank;

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: ListTile(
          onTap: () {},
          leading: BankLogo(image: bank.image),
          title: Text(
            bank.name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            bank.subtitle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (bank.fast) const FastBadge(),
              const Icon(Icons.chevron_right_outlined),
            ],
          ),
        ),
      ),
    );
  }
}

// Grid style: compact card
class BankGridCard extends StatelessWidget {
  const BankGridCard({super.key, required this.bank});
  final Bank bank;

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      margin: EdgeInsets.zero,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  BankLogo(image: bank.image, size: 40),
                  const Spacer(),
                  if (bank.fast) const FastBadge(),
                ],
              ),
              const Spacer(),
              Text(
                bank.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 2),
              Text(
                bank.subtitle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 12, color: Colors.black54),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 48),
      child: Center(
        child: Text(
          'No institutions match. Try another search or filter.',
          style: TextStyle(color: Colors.black54),
        ),
      ),
    );
  }
}
