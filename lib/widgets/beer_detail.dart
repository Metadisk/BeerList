import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/beer_bloc.dart';
import '../bloc/beer_event.dart';
import '../bloc/beer_state.dart';
import '../models/beer_model.dart';
import 'beer_list_item.dart';

class BeerDetail extends StatelessWidget {
  String beer;
  BeerDetail(this.beer);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Beer Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
        child: Text(beer,
            style: const TextStyle(
                color: Color(0xff005bae),
                fontWeight: FontWeight.w400,
                fontFamily: "Roboto",
                fontStyle: FontStyle.normal,
                fontSize: 16.0)),
      ),
    );
  }
}
