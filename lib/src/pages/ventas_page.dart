import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:zippp_vendedores/src/fonts/coco_line_icons.dart';
import 'package:zippp_vendedores/src/widgets/bottomBarMenu.dart';
import 'package:zippp_vendedores/src/widgets/buildAppBar.dart';
import 'package:syncfusion_flutter_charts/charts.dart';



 

///Core import
import 'package:syncfusion_flutter_core/core.dart';

///Core theme import
import 'package:syncfusion_flutter_core/theme.dart';

///Slider import
import 'package:syncfusion_flutter_sliders/sliders.dart';


 
   
class VentasPage extends StatefulWidget {
  @override
  _VentasPageState createState() => _VentasPageState();
}

class _VentasPageState extends State<VentasPage> {

 

  final DateTime min = DateTime(2021, 04, 01), max = DateTime(2021, 04, 30, 24);
  RangeController rangeController;
  TextEditingController textController;
  List<_ChartData> data;
  List<int> selectedItems;
  final formatCurrency = new NumberFormat.simpleCurrency(name: 'CLP', decimalDigits: 0,);

  @override
  void initState() {
    super.initState();
    selectedItems = <int>[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29];
    textController = TextEditingController(text: '1.321.121');
    rangeController = RangeController(
      start: DateTime(2021, 04, 01),
      end: DateTime(2021, 04, 30),
    );
    data = <_ChartData>[
      _ChartData(DateTime(2021, 04, 01), 22003),
      _ChartData(DateTime(2021, 04, 02), 22003),
      _ChartData(DateTime(2021, 04, 03), 33004),
      _ChartData(DateTime(2021, 04, 04), 12006),
      _ChartData(DateTime(2021, 04, 05), 24008),
      _ChartData(DateTime(2021, 04, 06), 43002),
      _ChartData(DateTime(2021, 04, 07), 22006),
      _ChartData(DateTime(2021, 04, 08), 65004),
      _ChartData(DateTime(2021, 04, 09), 82002),
      _ChartData(DateTime(2021, 04, 10), 24008),
      _ChartData(DateTime(2021, 04, 11), 96004),
      _ChartData(DateTime(2021, 04, 12), 75006),
      _ChartData(DateTime(2021, 04, 13), 22008),
      _ChartData(DateTime(2021, 04, 14), 86000),
      _ChartData(DateTime(2021, 04, 15), 22000),
      _ChartData(DateTime(2021, 04, 16), 45006),
      _ChartData(DateTime(2021, 04, 17), 60000),
      _ChartData(DateTime(2021, 04, 18), 74005),
      _ChartData(DateTime(2021, 04, 19), 32008),
      _ChartData(DateTime(2021, 04, 20), 20000),
      _ChartData(DateTime(2021, 04, 21), 6006),
      _ChartData(DateTime(2021, 04, 22), 50000),
      _ChartData(DateTime(2021, 04, 23), 30002),
      _ChartData(DateTime(2021, 04, 24), 30002),
      _ChartData(DateTime(2021, 04, 25), 10000),
      _ChartData(DateTime(2021, 04, 26), 30006),
      _ChartData(DateTime(2021, 04, 27), 80008),
      _ChartData(DateTime(2021, 04, 28), 64008),
      _ChartData(DateTime(2021, 04, 29), 90004),
      _ChartData(DateTime(2021, 04, 30), 50002)
    ];
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      bottomNavigationBar: BottonBarMenu(selected: 1),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
             return <Widget>[
                  SliverAppBar(
                    expandedHeight: 66,
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
                                          'Tus Ventas',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: Color(0xff292525),
                                            fontSize: 35,
                                            fontFamily: 'MetaPro',
                                            fontWeight: FontWeight.w400,
                                          ),
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
                        height: 300,
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
                        child:  SfRangeSelectorTheme(
                                    data: SfRangeSelectorThemeData(
                                        labelOffset: const Offset(0, 2),
                                        thumbColor: Colors.white,
                                        overlayColor: const Color.fromRGBO(245, 51, 63, 0.29),
                                        activeTrackColor: Color(0xffF5333F),
                                        thumbStrokeColor: Color(0xffF5333F),
                                        thumbStrokeWidth: 2.0,
                                        inactiveTrackColor: Color(0xffF5333F),
                                        activeLabelStyle: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black),
                                        inactiveLabelStyle: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black),
                                        inactiveRegionColor: Colors.transparent),
                                    child: SfRangeSelector(
                                      min: min,
                                      max: max,
                                      dateIntervalType: DateIntervalType.days,
                                      interval: 5.0,
                                      controller: rangeController,
                                      showTicks: true,
                                      showLabels: true,
                                      onChanged: (SfRangeValues values) {
                                        _setTotalDataUsage(values);
                                          },
                                          child: Container(
                                            width: MediaQuery.of(context).size.width,
                                            height: 300,
                                            child: Padding(
                                              padding: const EdgeInsets.only(top: 20),
                                              child: SfCartesianChart(
                                                title: ChartTitle(text: '\$1.321.121 total ventas'),
                                                margin: const EdgeInsets.all(0),
                                                primaryXAxis: DateTimeAxis(
                                                    isVisible: true,
                                                    minimum: DateTime(2021, 04, 01),
                                                    maximum: DateTime(2021, 04, 30, 24)),
                                                primaryYAxis:
                                                    NumericAxis(isVisible: false, maximum: 100000),
                                                plotAreaBorderWidth: 0,
                                                plotAreaBackgroundColor: Colors.transparent,
                                                series: <CartesianSeries<_ChartData, DateTime>>[
                                                  ColumnSeries<_ChartData, DateTime>(
                                                    width: 0.8,
                                                    initialSelectedDataIndexes: selectedItems,
                                                    selectionBehavior: SelectionBehavior(
                                                        enable: true,
                                                        unselectedOpacity: 0,
                                                        selectedBorderColor:
                                                            const Color(0xffF5333F),
                                                        selectedColor:
                                                            const Color(0xffF5333F),
                                                        unselectedColor: Colors.transparent,
                                                        selectionController: rangeController),
                                                    dashArray:<double>[3, 2],
                                                    color: const Color.fromRGBO(255, 255, 255, 0),
                                                    borderColor: const Color.fromRGBO(194, 194, 194, 1),
                                                    animationDuration: 0,
                                                    borderWidth: 1,
                                                    dataSource: data,
                                                    xValueMapper: (_ChartData score, _) => score.date,
                                                    yValueMapper: (_ChartData score, _) => score.runs,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
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
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${textController.text}',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 28,
                                              fontFamily: 'HelveticaNeue',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          Text(
                                            'Rango seleccionado',
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
                                            'Interacción\nClientes',
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
                          'Ventas'.toUpperCase(),
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
                      height: 130,
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

  void _setTotalDataUsage(SfRangeValues values) {

          double dataUsage = 0;
          for (int i = 0; i < data.length; i++) {
            if (data[i].date.isAfter(
                    //ignore: avoid_as
                    (values.start as DateTime).subtract(const Duration(hours: 1))) &&
                data[i].date.isBefore(
                    //ignore: avoid_as
                    (values.end as DateTime).add(const Duration(hours: 1)))) {
              dataUsage += data[i].runs;
            }
          }
        
          var valor = formatCurrency.format(dataUsage);
       
          setState(() {
            textController.text = valor.toString();
          });
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
          height: 110,
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                Column(
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
                  ],
                ),
                             

                Text(
                  '\$200.000',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontFamily: 'HelveticaNeue',
                    fontWeight: FontWeight.w300,
                    
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

class _ChartData {
  _ChartData(this.date, this.runs);
  final DateTime date;
  final num runs;
}