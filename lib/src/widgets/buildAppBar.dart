import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      leadingWidth: 110,
      leading: Container(
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