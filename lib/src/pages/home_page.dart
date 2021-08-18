import 'package:flutter/material.dart';
import 'package:zippp_vendedores/src/fonts/coco_line_icons.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:zippp_vendedores/src/widgets/bottomBarMenu.dart';
import 'package:zippp_vendedores/src/widgets/buildAppBar.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

 
   
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      bottomNavigationBar: BottonBarMenu(selected: 0),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
             return <Widget>[
                  SliverAppBar(
                    expandedHeight: 160,
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Container(
                          
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(top: 20,left: 20,bottom: 10),
                               child: Text(
                                          'Ultimos mensajes',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: Color(0xff292525),
                                            fontSize: 35,
                                            fontFamily: 'MetaPro',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                             ),

                              Container(
                                height: 90,
                                width: MediaQuery.of(context).size.width,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20),
                                        child: Column(
                                          children: [
                                            Container(
                                              height: 70,
                                              width: 70,
                                              decoration: BoxDecoration(
                                                     color: Color(0xffF5333F),
                                                     shape: BoxShape.circle
                                              ),
                                              child: IconButton(icon: Icon(CocoLineIcons.more_1),color: Colors.white,iconSize: 25, onPressed: () {  },),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(top: 5),
                                              child: Text(
                                                      'Ver todos',
                                                      textAlign: TextAlign.start,
                                                      style: TextStyle(
                                                        color: Color(0xff292525),
                                                        fontSize: 14,
                                                        fontFamily: 'MetaPro',
                                                        fontWeight: FontWeight.w400,
                                                      ),
                                                    ),
                                            )
                                          ],
                                        ),
                                      ),
                                      ItemLastMessage(imagen: 'assets/cliente1.png'),
                                      ItemLastMessage(imagen: 'assets/cliente2.png'),
                                      ItemLastMessage(imagen: 'assets/cliente3.png'),
                                      ItemLastMessage(imagen: 'assets/cliente4.png'),
                                      ItemLastMessage(imagen: 'assets/cliente5.png'),
                                  ],
                                ),
                              ),
 
                                    ],
                                  ),
                                  ),
                                ),

                              )
                          ];
                                                                                                    }, body: Container(
                                                                                                            padding: EdgeInsets.only(top: 20),
                                                                                                            child: ListView(
                                                                                                              //crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                              children: [
                                                                                                                   Padding(
                                                                                                                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                                                                                                        child: Container(
                                                                                                                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                                                                                                          height: 200,
                                                                                                                          width: MediaQuery.of(context).size.width,
                                                                                                                          decoration: BoxDecoration(
                                                                                                                              color: Colors.white,
                                                                                                                              borderRadius: BorderRadius.circular(20),
                                                                                                                              boxShadow: <BoxShadow>[
                                                                                                                                  BoxShadow(
                                                                                                                                      color: Colors.grey[350],
                                                                                                                                      blurRadius: 10.0,
                                                                                                                                      offset: Offset(0, 0))
                                                                                                                                ], 
                                                                                                                            ),
                                                                                                                          child:  SfCartesianChart(
                                                                                                                                        plotAreaBorderWidth: 0,
                                                                                                                                        title: ChartTitle(
                                                                                                                                            text:'Visión general'),
                                                                                                                                      
                                                                                                                                        primaryXAxis: CategoryAxis(
                                                                                                                                            majorGridLines: MajorGridLines(width: 0),
                                                                                                                                            labelPlacement: LabelPlacement.onTicks),
                                                                                                                                        primaryYAxis: NumericAxis(
                                                                                                                                            minimum: 100,
                                                                                                                                            maximum: 300,
                                                                                                                                            
                                                                                                                                            axisLine: AxisLine(width: 0),
                                                                                                                                            edgeLabelPlacement: EdgeLabelPlacement.shift,
                                                                                                                                            labelFormat: '{value}k',
                                                                                                                                            majorTickLines: MajorTickLines(size: 0)),
                                                                                                                                        series: _getDefaultSplineSeries(),
                                                                                                                                        tooltipBehavior: TooltipBehavior(enable: true),
                                                                                                                                      ),
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                
                                                                                                                Padding(
                                                                                                                  padding: const EdgeInsets.only(top: 20,bottom: 5,left: 20,right: 20),
                                                                                                                  child: Container(
                                                                                                                    height: 165,
                                                                                                                    child: Row(
                                                                                                                      children: [
                                                                                                                        Expanded(
                                                                                                                          child: Padding(
                                                                                                                            padding: const EdgeInsets.only(right: 10),
                                                                                                                            child: Container(
                                                                                                                              child: Padding(
                                                                                                                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                                                                                                                child: Column(
                                                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                                  children: [
                                                                                                                                    Row(
                                                                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                                      children: [
                                                                                                                                        Text(
                                                                                                                                          'Ventas',
                                                                                                                                          textAlign: TextAlign.start,
                                                                                                                                          style: TextStyle(
                                                                                                                                            color: Colors.white,
                                                                                                                                            fontSize: 18,
                                                                                                                                            fontFamily: 'MetaPro',
                                                                                                                                            fontWeight: FontWeight.w400,
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                        Icon(CocoLineIcons.shopping_cart,color: Colors.white,)
                                                                                                                                      ],
                                                                                                                                    ),
                                                                                                                                    Column(
                                                                                                                                      children: [
                                                                                                                                        Text(
                                                                                                                                          '\$756.000',
                                                                                                                                          textAlign: TextAlign.start,
                                                                                                                                          style: TextStyle(
                                                                                                                                            color: Colors.white,
                                                                                                                                            fontSize: 20,
                                                                                                                                            fontFamily: 'HelveticaNeue',
                                                                                                                                            fontWeight: FontWeight.w700,
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                        Text(
                                                                                                                                          'ultimo mes',
                                                                                                                                          textAlign: TextAlign.start,
                                                                                                                                          style: TextStyle(
                                                                                                                                            color: Colors.white,
                                                                                                                                            fontSize: 18,
                                                                                                                                            fontFamily: 'MetaPro',
                                                                                                                                            fontWeight: FontWeight.w300,
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                      ],
                                                                                                                                    )
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                              decoration: BoxDecoration(
                                                                                                                              color: Color(0xffF5333F),
                                                                                                                              borderRadius: BorderRadius.circular(20),
                                                                                                                              boxShadow: <BoxShadow>[
                                                                                                                                  BoxShadow(
                                                                                                                                      color: Colors.grey[350],
                                                                                                                                      blurRadius: 10.0,
                                                                                                                                      offset: Offset(0, 0))
                                                                                                                                ], 
                                                                                                                            ),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        ),
                                                                                                                        SizedBox(),
                                                                                                                        Expanded(
                                                                                                                          child: Padding(
                                                                                                                            padding: const EdgeInsets.only(left: 10),
                                                                                                                            child: Container(
                                                                                                                              child: Padding(
                                                                                                                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                                                                                                                child: Column(
                                                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                                                  children: [
                                                                                                                                    Row(
                                                                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                                      children: [
                                                                                                                                        Text(
                                                                                                                                          'Clientes',
                                                                                                                                          textAlign: TextAlign.start,
                                                                                                                                          style: TextStyle(
                                                                                                                                            color: Colors.grey,
                                                                                                                                            fontSize: 18,
                                                                                                                                            fontFamily: 'MetaPro',
                                                                                                                                            fontWeight: FontWeight.w400,
                                                                                                                                          ),
                                                                                                                                        ),
                                                                                                                                        Icon(CocoLineIcons.user_outline,color: Colors.grey,)
                                                                                                                                      ],
                                                                                                                                    ),
                                                                                                                                    Container(
                                                                                                                                      height: 50,
                                                                                                                                      width: 200,
                                                                                                                                      
                                                                                                                                      child: ListView(
                                                                                                                                            scrollDirection: Axis.horizontal,
                                                                                                                                        children: [
                                                                                                                                            Container(
                                                                                                                                              height: 40,
                                                                                                                                              width: 40,
                                                                                                                                              decoration: BoxDecoration(
                                                                                                                                                  shape: BoxShape.circle,
                                                                                                                                                  color: Colors.redAccent,
                                                                                                                                                   image: DecorationImage(
                                                                                                                                                      image: AssetImage('assets/cliente1.png'),
                                                                                                                                                      fit: BoxFit.cover
                                                                                                                                                    )
                                                                                                                                              ),
                                                                                                                                            ),
                                                                                                                                            Transform.translate(
                                                                                                                                            offset: Offset(-20,0),
                                                                                                                                              child: Container(
                                                                                                                                                height: 40,
                                                                                                                                                width: 40,
                                                                                                                                                decoration: BoxDecoration(
                                                                                                                                                    shape: BoxShape.circle,
                                                                                                                                                    color: Colors.redAccent,
                                                                                                                                                    image: DecorationImage(
                                                                                                                                                      image: AssetImage('assets/cliente2.png'),
                                                                                                                                                      fit: BoxFit.cover
                                                                                                                                                    )
                                                                                                                                                ),
                                                                                                                                              ),
                                                                                                                                            ),
                                                                                                                                            Transform.translate(
                                                                                                                                            offset: Offset(-40,0),
                                                                                                                                              child: Container(
                                                                                                                                                height: 40,
                                                                                                                                                width: 40,
                                                                                                                                                decoration: BoxDecoration(
                                                                                                                                                    shape: BoxShape.circle,
                                                                                                                                                    color: Colors.redAccent,
                                                                                                                                                    image: DecorationImage(
                                                                                                                                                      image: AssetImage('assets/cliente3.png'),
                                                                                                                                                      fit: BoxFit.cover
                                                                                                                                                    )
                                                                                                                                                ),
                                                                                                                                              ),
                                                                                                                                            ),
                                                                                                                                            Transform.translate(
                                                                                                                                            offset: Offset(-60,0),
                                                                                                                                              child: Container(
                                                                                                                                                height: 40,
                                                                                                                                                width: 40,
                                                                                                                                                decoration: BoxDecoration(
                                                                                                                                                    shape: BoxShape.circle,
                                                                                                                                                    color: Colors.redAccent,
                                                                                                                                                    image: DecorationImage(
                                                                                                                                                      image: AssetImage('assets/cliente4.png'),
                                                                                                                                                      fit: BoxFit.cover
                                                                                                                                                    )
                                                                                                                                                ),
                                                                                                                                              ),
                                                                                                                                            ),
                                                                                                                                        ],
                                                                                                                                      ),
                                                                                                                                    )
                                                                                                                                  ],
                                                                                                                                ),
                                                                                                                              ),
                                                                                                                              decoration: BoxDecoration(
                                                                                                                              color: Colors.white,
                                                                                                                              borderRadius: BorderRadius.circular(20),
                                                                                                                              boxShadow: <BoxShadow>[
                                                                                                                                  BoxShadow(
                                                                                                                                      color: Colors.grey[350],
                                                                                                                                      blurRadius: 10.0,
                                                                                                                                      offset: Offset(0, 0))
                                                                                                                                ], 
                                                                                                                            ),
                                                                                                                            ),
                                                                                                                          ),
                                                                                                                        )
                                                                                                                      ],
                                                                                                                    ),
                                                                                                                  )
                                                                                                                ),
                                                                                        
                                                                                                             Padding(
                                                                                                                  padding: const EdgeInsets.only(top: 30,right: 20,left: 20),
                                                                                                                  child: Row(
                                                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                                    children: [
                                                                                                                      Text(
                                                                                                                        'Pedidos recientes'.toUpperCase(),
                                                                                                                        textAlign: TextAlign.center,
                                                                                                                        style: TextStyle(
                                                                                                                          color: Color(0xff404040),
                                                                                                                          fontSize: 18,
                                                                                                                          fontFamily: 'MetaPro',
                                                                                                                          fontWeight: FontWeight.w400,
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                      Row(
                                                                                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                                        children: [
                                                                                                                          Text(
                                                                                                                            'TODOS',
                                                                                                                            textAlign: TextAlign.center,
                                                                                                                            style: TextStyle(
                                                                                                                              color: Color(0xffB5B5B5),
                                                                                                                              fontSize: 14,
                                                                                                                              fontFamily: 'MetaPro',
                                                                                                                              fontWeight: FontWeight.w300,
                                                                                                                            ),
                                                                                                                          ),

                                                                                                                            Icon(Icons.arrow_forward_ios_rounded,size: 15,color: Color(0xffB5B5B5),)

                                                                                                                        ],
                                                                                                                      ),
                                                                                                                    ],
                                                                                                                  ),
                                                                                                                ),
                                                                                        
                                                                                                                Padding(
                                                                                                                  padding: const EdgeInsets.only(top: 20,bottom: 5),
                                                                                                                  child: Container(
                                                                                                                    height: 200,
                                                                                                                    width: MediaQuery.of(context).size.width,
                                                                                                                    child: ListView(
                                                                                                                      scrollDirection: Axis.horizontal,
                                                                                                                      children: [
                                                                                                                        PedidosRecientesItem(
                                                                                                                          color: Color(0xff7C72FC),
                                                                                                                          estado: 'confirmado',
                                                                                                                          nombre: 'Michael Scott',
                                                                                                                          numeropedido: '12345',
                                                                                                                          titulo: '10 productos',
                                                                                                                        ),
                                                                                                                        PedidosRecientesItem(
                                                                                                                          color: Color(0xffFF7F5C),
                                                                                                                           estado: 'confirmado',
                                                                                                                          nombre: 'Michael Scott',
                                                                                                                          numeropedido: '12345',
                                                                                                                          titulo: '10 productos',
                                                                                                                        ),
                                                                                                                        PedidosRecientesItem(
                                                                                                                          color: Color(0xffFB2685),
                                                                                                                           estado: 'confirmado',
                                                                                                                          nombre: 'Michael Scott',
                                                                                                                          numeropedido: '12345',
                                                                                                                          titulo: '10 productos',
                                                                                                                        ),
                                                                                                                         
                                                                                                                      ],
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                         
                                                                                        
                                                                                                              ],
                                                                                                            ),
                                                                                                ),
                                                                                            ),
                                                                                        
                                                                                            );

 



                                                                                          }


List<SplineSeries<ChartSampleData, String>> _getDefaultSplineSeries() {
    final List<ChartSampleData> chartData = <ChartSampleData>[
      ChartSampleData(x: 'Lun', y: 110, pointColor: Colors.redAccent),
      ChartSampleData(x: 'Mar', y: 210),
      ChartSampleData(x: 'Mie', y: 200),
      ChartSampleData(x: 'Jue', y: 120),
      ChartSampleData(x: 'Vie', y: 180),
      ChartSampleData(x: 'Sab', y: 280),
      ChartSampleData(x: 'Dom', y: 190),
      
    ];
    return <SplineSeries<ChartSampleData, String>>[
      SplineSeries<ChartSampleData, String>(
        dataSource: chartData,
        xValueMapper: (ChartSampleData sales, _) => sales.x,
        yValueMapper: (ChartSampleData sales, _) => sales.y,
        markerSettings: MarkerSettings(isVisible: true),
        name: 'Ventas',
      ),
    ];
  }

  
                                                                                          
}

///Chart sample data
class ChartSampleData {
  /// Holds the datapoint values like x, y, etc.,
  ChartSampleData(
      {this.x,
      this.y,
      this.xValue,
      this.yValue,
      this.secondSeriesYValue,
      this.thirdSeriesYValue,
      this.pointColor,
      this.size,
      this.text,
      this.open,
      this.close,
      this.low,
      this.high,
      this.volume});

  /// Holds x value of the datapoint
  final dynamic x;

  /// Holds y value of the datapoint
  final num y;

  /// Holds x value of the datapoint
  final dynamic xValue;

  /// Holds y value of the datapoint
  final num yValue;

  /// Holds y value of the datapoint(for 2nd series)
  final num secondSeriesYValue;

  /// Holds y value of the datapoint(for 3nd series)
  final num thirdSeriesYValue;

  /// Holds point color of the datapoint
  final Color pointColor;

  /// Holds size of the datapoint
  final num size;

  /// Holds datalabel/text value mapper of the datapoint
  final String text;

  /// Holds open value of the datapoint
  final num open;

  /// Holds close value of the datapoint
  final num close;

  /// Holds low value of the datapoint
  final num  low;

  /// Holds high value of the datapoint
  final num high;

  /// Holds open value of the datapoint
  final num volume;
}

  
class ItemLastMessage extends StatelessWidget {
  final String imagen;
  const ItemLastMessage({
    Key key, this.imagen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                   color: Color(0xffF5333F),
                   shape: BoxShape.circle,
                   image: DecorationImage(
                     image: AssetImage(imagen),
                     fit: BoxFit.cover
                   )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
                    'Nombre del cliente',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Color(0xff292525),
                      fontSize: 14,
                      fontFamily: 'MetaPro',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
          )
        ],
      ),
    );
  }
}
 

class PedidosRecientesItem extends StatelessWidget {
  final Color color;
  final String titulo;
  final String numeropedido;
  final String nombre;
  final String estado;
  
  const PedidosRecientesItem({
    Key key, this.color,this.titulo, this.numeropedido, this.nombre, this.estado,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5,left: 20,top: 5,bottom: 5),
      child: Container(
          padding: EdgeInsets.only(top: 25,left: 8,right: 8,),
          height: 200,
          width: 140,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
            boxShadow: <BoxShadow>[
        BoxShadow(
            color: Colors.grey[350],
            blurRadius: 10.0,
            offset: Offset(0, 0))
      ], 
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Text(
                  'Pedido #$numeropedido',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'HelveticaNeue',
                    fontWeight: FontWeight.w300,
                    
                  ),
                ),
                Text(
                  '$nombre',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'HelveticaNeue',
                    fontWeight: FontWeight.w300,
                    
                  ),
                ),
                Opacity(
                                  opacity: 0.6,
                                  child: Text(
                    'Pedido $estado',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'HelveticaNeue',
                      fontWeight: FontWeight.w300,
                      
                    ),
                  ),
                ),
                Expanded(
                                  child: SfRadialGauge(
                              axes: <RadialAxis>[
                                RadialAxis(
                                    minimum: 0,
                                    maximum: 100,
                                    startAngle: 270,
                                    endAngle: 270,
                                    showLabels: false,
                                    showTicks: false,
                                    radiusFactor: 0.85,
                                    axisLineStyle: AxisLineStyle(
                                      //cornerStyle: CornerStyle.bothFlat,
                                      color: Colors.white38,
                                      thickness: 3),
                                    pointers: <GaugePointer>[
                                      RangePointer(
                                        value: 75,
                                       // cornerStyle: CornerStyle.,
                                        width: 3,
                                        sizeUnit: GaugeSizeUnit.logicalPixel,
                                        color: Colors.white,
                                      ),
                              
                                      ], 
                                      annotations: <GaugeAnnotation>[
                                        GaugeAnnotation(
                                          angle: 90,
                                          axisValue: 5,
                                          positionFactor: 0.1,
                                          widget: Text(
                                                    '03',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 40,
                                                      fontFamily: 'HelveticaNeue',
                                                      fontWeight: FontWeight.w300,
                                                      
                                                    ),
                                                  ),
                                        )
                                      ]
                                  ) 
                              ] ,
                              
                                ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Opacity(
                                    opacity: 0.6,
                                    child: Text(
                      titulo,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'HelveticaNeue',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
    );
  }
}