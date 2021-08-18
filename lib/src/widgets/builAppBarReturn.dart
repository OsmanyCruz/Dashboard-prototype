import 'package:flutter/material.dart';
import 'package:zippp_vendedores/src/fonts/coco_line_icons.dart';

AppBar buildAppBarReturn(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,size: 16,),color: Colors.black, onPressed: () { Navigator.of(context).pop(); },),
        title: Container(
          height: 40,
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Center(child: Image.asset('assets/Logo-ENKO.png')),
        ),
      ),
        actions: [
       
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.grey[350],
                    blurRadius: 6.0,
                    offset: Offset(0, 0))
              ],
              image: DecorationImage(
                image: AssetImage('assets/vendedorfoto.png'),
                fit: BoxFit.cover
              )
            ),
            
          ),
        )
         
      ],
      );
  }