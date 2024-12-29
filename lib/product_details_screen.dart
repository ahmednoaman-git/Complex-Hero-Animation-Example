import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/image_list.dart';
import 'package:testing/product.dart';
import 'package:testing/product_card.dart';
import 'package:testing/styles.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  const ProductDetailScreen({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            largeTitle: Text(product.name),
          ),
          _buildCoverImage(),
          _buildImageGallery(),
          SliverToBoxAdapter(
            child: Column(
              children: [
                _buildColorSection(),
                _buildSpecsSection(),
                _buildSellerSection(),
                _buildPurchaseSection(),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCoverImage() {
    return SliverToBoxAdapter(
      child: Image.network(
        product.coverImageUrl,
        fit: BoxFit.fitHeight,
      ),
    );
  }

  Widget _buildImageGallery() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ImageList(
          tag: product.name,
          images: product.images,
          expansionFactor: 1,
        ),
      ),
    );
  }

  Widget _buildColorSection() {
    return Column(
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 8,
          ),
          child: Row(
            children: [
              const Text(
                'Colors',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              ...product.colors.map((color) => ColorSwatch(color: color)),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSpecsSection() {
    return Column(
      children: [
        const Divider(),
        CupertinoListSection.insetGrouped(
          header: const Text('Product Details'),
          children: product.specs.entries
              .map((entry) => CupertinoListTile(
                    title: Text(entry.key),
                    subtitle: Text(entry.value),
                    trailing: const Icon(CupertinoIcons.info),
                  ))
              .toList(),
        ),
      ],
    );
  }

  Widget _buildSellerSection() {
    return Column(
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 8,
          ),
          child: Row(
            children: [
              const Text(
                'Seller',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              SellerAvatar(imageUrl: product.sellerImageUrl),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 8,
          ),
          child: Text(
            product.sellerDescription,
            style: const TextStyle(
              fontSize: 14,
              color: CupertinoColors.systemGrey,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPurchaseSection() {
    return Column(
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 8,
          ),
          child: Row(
            children: [
              Text(
                '\$${product.price}',
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              CupertinoButton.tinted(
                padding: const EdgeInsets.all(12),
                sizeStyle: CupertinoButtonSize.large,
                onPressed: () {},
                child: const Row(
                  children: [
                    Icon(CupertinoIcons.cart),
                    SizedBox(width: 8),
                    Text('Add to Cart'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ColorSwatch extends StatelessWidget {
  final Color color;

  const ColorSwatch({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      margin: const EdgeInsets.only(left: 8.0),
      decoration: AppStyles.smoothBorderDecoration(
        radius: 8,
        color: color,
        borderSide: const BorderSide(
          color: CupertinoColors.systemGrey2,
          width: 1.0,
        ),
      ),
    );
  }
}
