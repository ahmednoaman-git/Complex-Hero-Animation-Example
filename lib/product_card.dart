import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/image_list.dart';
import 'package:testing/product.dart';
import 'package:testing/styles.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback onTap;

  const ProductCard({
    super.key,
    required this.product,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(AppStyles.defaultPadding),
        decoration: AppStyles.smoothBorderDecoration(),
        child: Column(
          spacing: 4,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildImageSection(),
            _buildProductHeader(),
            _buildDescription(),
            const Spacer(),
            _buildActionBar(),
          ],
        ),
      ),
    );
  }

  Widget _buildImageSection() {
    return ImageList(
      tag: product.name,
      images: product.images,
      expansionFactor: 0, // Initial stacked state
    );
  }

  Widget _buildProductHeader() {
    return Row(
      children: [
        Expanded(
          child: Text(
            product.name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SellerAvatar(imageUrl: product.sellerImageUrl),
      ],
    );
  }

  Widget _buildDescription() {
    return Text(
      product.description,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        fontSize: 14,
        color: CupertinoColors.systemGrey,
      ),
    );
  }

  Widget _buildActionBar() {
    return Row(
      children: [
        Text(
          '\$${product.price}',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        _ActionButton(
          icon: CupertinoIcons.heart,
          onPressed: () {},
        ),
        _ActionButton.filled(
          icon: CupertinoIcons.cart,
          onPressed: () {},
        ),
      ],
    );
  }
}

class _ActionButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final bool isFilled;

  const _ActionButton({
    required this.icon,
    required this.onPressed,
    this.isFilled = false,
  });

  const _ActionButton.filled({
    required IconData icon,
    required VoidCallback onPressed,
  }) : this(
          icon: icon,
          onPressed: onPressed,
          isFilled: true,
        );

  @override
  Widget build(BuildContext context) {
    final button = CupertinoButton(
      padding: const EdgeInsets.all(6),
      sizeStyle: CupertinoButtonSize.small,
      onPressed: onPressed,
      child: Icon(icon),
    );

    return isFilled
        ? CupertinoButton.filled(
            padding: const EdgeInsets.all(6),
            sizeStyle: CupertinoButtonSize.small,
            onPressed: onPressed,
            child: Icon(icon),
          )
        : button;
  }
}

class SellerAvatar extends StatelessWidget {
  final String imageUrl;
  final double size;

  const SellerAvatar({
    super.key,
    required this.imageUrl,
    this.size = 24,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      decoration: AppStyles.smoothBorderDecoration(
        radius: 8,
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(4.0),
      child: AspectRatio(
        aspectRatio: 1.0,
        child: Image.network(imageUrl),
      ),
    );
  }
}
