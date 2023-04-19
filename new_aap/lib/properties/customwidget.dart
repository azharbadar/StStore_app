import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';



customtext({hinttext,icn,sufix})
{

return    
TextField(
  obscureText: false,
  autofocus: false,
  decoration: InputDecoration(
    hintText: hinttext,
    prefix: Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
      child: Icon(icn),
    ),
    suffix: sufix
  ),    
);
}


custompassword({hinttext,icn,sufix})
{
  return  TextField(
  obscureText: true,
  autofocus: false,
  decoration: InputDecoration(
  hintText: hinttext,
  prefix: Padding(
  padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
  child: Icon(icn,),
    ),
    suffix: Icon(sufix)
  ),    
);

}


rating_box({box_color}){
  return Column(
    children: [
      Container(
                height: 10,
                width: 10,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),
                color: box_color),
              ),
              SizedBox(width: 15,),
    ],
  );
}
///////////////////////////////////////////////

filter_color({item_color}){
  return 
  Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: item_color,
  ),
  width: 40,
  height: 40,
);

}

/////////// SINGLE PRODUCT ///////////////////


class MyRadioListTile<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final String leading;
  final Widget? title;
  final ValueChanged<T?> onChanged;

  const MyRadioListTile({
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.leading,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    final title = this.title;
    return InkWell(
      onTap: () => onChanged(value),
      child: Container(
        height: 24,
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          children: [
            _customRadioButton,
            SizedBox(width: 5),
            if (title != null) title,
          ],
        ),
      ),
    );
  }

  Widget get _customRadioButton {
    final isSelected = value == groupValue;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xffc6ab59) : null,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
          color: isSelected ? Colors.blue : Colors.grey[300]!,
          width: 2,
        ),
      ),
      child: Text(
        leading,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.grey[600]!,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}