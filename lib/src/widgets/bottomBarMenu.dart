import 'package:flutter/material.dart';
import 'package:zippp_vendedores/src/fonts/coco_line_icons.dart';

class BottonBarMenu extends StatelessWidget {
  final int selected;

  const BottonBarMenu({
    Key key, this.selected=0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: <BoxShadow>[
                 BoxShadow(
                  color: Colors.grey[350],
                    blurRadius: 6.0,
                    offset: Offset(0, -3))
               ],
            ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          selected == 0?
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Color(0xffF5333F),
              borderRadius: BorderRadius.circular(12),
              boxShadow: <BoxShadow>[
                 BoxShadow(
                  color: Colors.grey[350],
                    blurRadius: 6.0,
                    offset: Offset(3, 3))
               ],
            ),
            child: Center(
              child:  Icon(CocoLineIcons.home,color: Colors.white,size: 22,),
            ),
          ): IconButton(icon:Icon(CocoLineIcons.home,color: Color(0xffB7B7B7),size: 23,), onPressed: (){
            Navigator.pushReplacementNamed(context, 'home');
          }),


          selected == 1?
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Color(0xffF5333F),
              borderRadius: BorderRadius.circular(12),
              boxShadow: <BoxShadow>[
                 BoxShadow(
                  color: Colors.grey[350],
                    blurRadius: 6.0,
                    offset: Offset(3, 3))
               ],
            ),
            child: Center(
              child:  Icon(CocoLineIcons.pie_chart2,color: Colors.white,size: 22,),
            ),
          ): IconButton(icon:Icon(CocoLineIcons.pie_chart2,color: Color(0xffB7B7B7),size: 22,), onPressed: (){
            Navigator.pushReplacementNamed(context, 'ventas');
          }),

          selected == 2?
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Color(0xffF5333F),
              borderRadius: BorderRadius.circular(12),
              boxShadow: <BoxShadow>[
                 BoxShadow(
                  color: Colors.grey[350],
                    blurRadius: 6.0,
                    offset: Offset(3, 3))
               ],
            ),
            child: Center(
              child:  Icon(CocoLineIcons.package,color: Colors.white,size: 22,),
            ),
          ): IconButton(icon:Icon(CocoLineIcons.package,color: Color(0xffB7B7B7),size: 23,), onPressed: (){
            Navigator.pushReplacementNamed(context, 'pedidos');
          }),

          selected == 3?
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Color(0xffF5333F),
              borderRadius: BorderRadius.circular(12),
              boxShadow: <BoxShadow>[
                 BoxShadow(
                  color: Colors.grey[350],
                    blurRadius: 6.0,
                    offset: Offset(3, 3))
               ],
            ),
            child: Center(
              child:  Icon(CocoLineIcons.message___3,color: Colors.white,size: 22,),
            ),
          ): IconButton(icon:Icon(CocoLineIcons.paper_plane,color: Color(0xffB7B7B7),size: 18,), onPressed: (){
             Navigator.pushReplacementNamed(context, 'profile');
          }),
 

         selected == 4?
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Color(0xffF5333F),
              borderRadius: BorderRadius.circular(12),
              boxShadow: <BoxShadow>[
                 BoxShadow(
                  color: Colors.grey[350],
                    blurRadius: 6.0,
                    offset: Offset(3, 3))
               ],
            ),
            child: Center(
              child:  Icon(CocoLineIcons.user_outline,color: Colors.white,size: 22,),
            ),
          ): IconButton(icon:Icon(CocoLineIcons.user_outline,color: Color(0xffB7B7B7),size: 18,), onPressed: (){
             Navigator.pushReplacementNamed(context, 'profile');
          }),
 

        ],
      ),
    );
  }
}