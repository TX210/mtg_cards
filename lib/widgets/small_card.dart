import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mtg_cards/models/card/card_info.model.dart';
import 'package:skeletons/skeletons.dart';

class SmallCard extends StatelessWidget {
  final CardInfo cardInfo;
  const SmallCard({
    Key? key,
    required this.cardInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.go('/card/${cardInfo.id}', extra: cardInfo);
      },
      child: SizedBox(
        height: 250,
        width: MediaQuery.of(context).size.width / 3,
        child: Card(
          elevation: 5,
          margin: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Hero(
                tag: cardInfo.id,
                child: CachedNetworkImage(
                  imageUrl: cardInfo.imageUrl ?? 'not image',
                  placeholder: (context, url) => const SkeletonAvatar(
                    style: SkeletonAvatarStyle(
                        width: double.infinity, height: 190),
                  ),
                  errorWidget: (context, url, error) => Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.error,
                          color: Colors.red,
                        ),
                        Text('No image available')
                      ]),
                ),
              ),
              Text(cardInfo.name),
            ],
          ),
        ),
      ),
    );
  }
}
