import 'package:flutter/material.dart';
import 'package:nanoid/nanoid.dart';
import 'package:intl/intl.dart';
import 'package:finki/model/list_item.dart';

import 'adaptive_flat_button.dart';

class NovElement extends StatefulWidget {
  final Function addItem;

  NovElement(this.addItem);

  @override
  State<StatefulWidget> createState() => _NovElementState();
}

class _NovElementState extends State<NovElement> {
  final _naslovController = TextEditingController();
  final _datumController = TextEditingController();

  late String naslov;
  late DateTime datum;

  void _submitData() {
    if (_datumController.text.isEmpty) {
      return;
    }
    final vnesenNaslov = _naslovController.text;
    final vnesenDatum = _datumController.text;

    if (vnesenNaslov.isEmpty || vnesenDatum.isEmpty) {
      return;
    }

    final newItem = ListItem(
        id: nanoid(5), naslov: vnesenNaslov, datum: DateTime.parse(vnesenDatum));
    widget.addItem(newItem);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
          TextField(
          controller: _naslovController,
          decoration: InputDecoration(labelText: "Predmet"),
          //  onChanged: (val) {
          //    naslov = val;
          //  }
          onSubmitted: (_) => _submitData(),
        ),
          TextField(
            controller: _datumController,
            decoration: InputDecoration(labelText: "Datum", hintText: "yyyy-mm-dd hh:mm:ss"),
            keyboardType: TextInputType.datetime,
            //  onChanged: (val) {
            //    naslov = val;
            //  }
            onSubmitted: (_) => _submitData(),
        ),
        AdaptiveFlatButton("Dodadi ispit", _submitData)
    ],
    ),
    );
  }
}
