import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing/styles.dart';

class ImageList extends StatefulWidget {
  const ImageList({
    super.key,
    required this.tag,
    required this.images,
    this.expansionFactor = 0,
    this.fromConstraints,
    this.toConstraints,
  });

  final String tag;
  final List<String> images;
  final double expansionFactor;
  final BoxConstraints? fromConstraints;
  final BoxConstraints? toConstraints;

  @override
  State<ImageList> createState() => _ImageListState();
}

class _ImageListState extends State<ImageList> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final fromConstraints = widget.fromConstraints ?? constraints;
        final toConstraints = widget.toConstraints ?? constraints;

        final expandedSpacing = 8;
        final expandedWidth = (toConstraints.maxWidth - (widget.images.length - 1) * expandedSpacing) / widget.images.length;
        final unExpandedWidth = fromConstraints.maxWidth;

        final children = <Widget>[];

        final width = lerpDouble(
          unExpandedWidth,
          expandedWidth,
          widget.expansionFactor,
        )!;

        for (var i = 0; i < widget.images.length; i++) {
          children.add(
            Positioned(
              left: i * (width + expandedSpacing) * Curves.easeInCubic.transform(widget.expansionFactor),
              width: width,
              child: ContainerImage(
                image: widget.images[i],
              ),
            ),
          );
        }

        return Hero(
          tag: widget.tag,
          transitionOnUserGestures: true,
          flightShuttleBuilder: (flightContext, animation, direction, fromContext, toContext) {
            final fromConstraints = (fromContext.findRenderObject() as RenderBox).constraints;
            final toConstraints = (toContext.findRenderObject() as RenderBox).constraints;

            return AnimatedBuilder(
              animation: animation,
              builder: (context, child) {
                return Center(
                  child: SizedBox(
                    width: double.infinity,
                    child: ImageList(
                      tag: widget.tag,
                      images: widget.images,
                      expansionFactor: animation.value,
                      fromConstraints: direction == HeroFlightDirection.pop ? toConstraints : fromConstraints,
                      toConstraints: direction == HeroFlightDirection.pop ? fromConstraints : toConstraints,
                    ),
                  ),
                );
              },
            );
          },
          child: SizedBox(
            height: width,
            child: Stack(
              children: children.reversed.toList(),
            ),
          ),
        );
      },
    );
  }
}

class ContainerImage extends StatelessWidget {
  const ContainerImage({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.0,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: AppStyles.smoothBorderDecoration(
          radius: 24 - 8,
          color: Colors.white,
          borderSide: BorderSide(
            color: CupertinoColors.systemGrey3,
            width: 1.0,
          ),
          shadows: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.5),
              blurRadius: 15,
              spreadRadius: -5,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Image.network(
          image,
        ),
      ),
    );
  }
}
