import 'package:beer/models/beer_model.dart';
import 'package:flutter/material.dart';

import 'beer_detail.dart';

class BeerListItem extends StatelessWidget {
  final BeerModel beer;
  const BeerListItem(this.beer);

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => BeerDetail(beer.description)),
        ).then((value) {});
      },
          child: IgnorePointer(
          ignoring: true,
          child:
      ExpansionTile(
      trailing: const SizedBox(),
      title: Text(beer.name),
      subtitle: Text(beer.tagline),
      childrenPadding: const EdgeInsets.all(16),
      leading: Container(
        child: Image.network(
              beer.imageUrl!,
              loadingBuilder: (context, widget, imageChunkEvent) {
              return imageChunkEvent == null
              ? widget
                  : CircularProgressIndicator();
              },
              )
      /*children: [
        Text(
          beer.description,
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 20),
        beer.imageUrl == null
            ? Container()
            : Image.network(
                beer.imageUrl!,
                loadingBuilder: (context, widget, imageChunkEvent) {
                  return imageChunkEvent == null
                      ? widget
                      : CircularProgressIndicator();
                },
                height: 300,
              ),
      ],*/
    ),),));
  }
}
