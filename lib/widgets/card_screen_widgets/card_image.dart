import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mtg_cards/models/card/card_info.model.dart';
import 'package:mtg_cards/widgets/functional/image_text.dart';

class CardImage extends StatefulWidget {
  final CardInfo card;

  const CardImage({
    Key? key,
    required this.card,
  }) : super(key: key);

  @override
  State<CardImage> createState() => _CardImageState();
}

class _CardImageState extends State<CardImage> {
  Offset _offset = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Hero(
          tag: widget.card.id,
          child: Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001) // perspective
              ..rotateX(0.01 * _offset.dy) // changed
              ..rotateY(-0.01 * _offset.dx), // changed
            alignment: FractionalOffset.center,
            child: GestureDetector(
              onPanUpdate: (details) =>
                  setState(() => _offset += details.delta),
              onDoubleTap: () => setState(() => _offset = Offset.zero),
              child: CachedNetworkImage(
                imageUrl: widget.card.imageUrl as String,
                errorWidget: (context, url, error) {
                  return Container(
                      decoration: BoxDecoration(
                        border:
                            Border.all(width: 1, color: Colors.grey.shade400),
                      ),
                      alignment: Alignment.center,
                      child: const Text('No image'));
                },
              ),
            ),
          ),
        ),
        ImageText(
            imagePath: 'assets/icons/artist-nib.png', text: widget.card.artist)
      ],
    );
  }
}
