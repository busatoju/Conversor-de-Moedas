import 'package:flutter/material.dart';

import 'package:conversor_moedas/app/models/currency_model.dart';

class CurrencyBox extends StatelessWidget {
  final List<CurrencyModel> items;
  final TextEditingController controller;
  final CurrencyModel selectedItem;
  final void Function(CurrencyModel model) onChanged;
  const CurrencyBox({
    Key key,
    this.items,
    this.controller,
    this.onChanged, this.selectedItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: SizedBox(
                height: 64,
                child: DropdownButton<CurrencyModel>(
                  
                  iconEnabledColor: Colors.amber,
                  items: items
                      .map((e) => DropdownMenuItem(
                        value: e,
                            child: Text(e.name),
                          ))
                      .toList(),
                  isExpanded: true,
                  value: selectedItem,
                  underline: Container(
                    height: 1,
                    color: Colors.amber,
                  ),
                  onChanged: onChanged,
                ),
                ),
                ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          flex: 2,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber)),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber)),
            ),
          ),
        ),
      ],
    );
  }
}
