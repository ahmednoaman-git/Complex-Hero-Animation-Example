import 'package:flutter/cupertino.dart';
import 'package:testing/product.dart';
import 'package:testing/product_card.dart';
import 'package:testing/product_details_screen.dart';
import 'package:testing/styles.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => CupertinoApp(
        debugShowCheckedModeBanner: false,
        theme: const CupertinoThemeData(brightness: Brightness.dark),
        home: const HomeScreen(),
      );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final products = Product.samples()..shuffle();

    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Products'),
      ),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.646,
        mainAxisSpacing: AppStyles.defaultPadding,
        crossAxisSpacing: AppStyles.defaultPadding,
        children: products
            .map((product) => ProductCard(
                  product: product,
                  onTap: () => _navigateToDetail(context, product),
                ))
            .toList(),
      ),
    );
  }

  void _navigateToDetail(BuildContext context, Product product) {
    Navigator.of(context).push(
      CupertinoPageRoute(
        builder: (context) => ProductDetailScreen(product: product),
      ),
    );
  }
}
