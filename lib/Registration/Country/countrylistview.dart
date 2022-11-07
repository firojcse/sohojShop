import 'package:flutter/material.dart';

import 'county_model.dart';

class CuntryList extends StatefulWidget {
  const CuntryList({Key? key}) : super(key: key);

  @override
  State<CuntryList> createState() => _CuntryListState();
}

class _CuntryListState extends State<CuntryList> {
  List<CountryNameNumber>connn=CounNaNu.contrynammenumber();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        ListView.builder(
          itemCount: connn.length,
            itemBuilder: (BuildContext context, int index){
              return GestureDetector(
                onTap: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>Offers_Product(detailsOfOffers:offers[index],)));
                },
                child: ListTile(
                 title: Text(connn[index].conName),
                  leading: Text(connn[index].conSortName),
                  trailing: Text(connn[index].conSortNumber),
                ),
              );

            }),
        // ListView.builder(
        //   itemCount: connn.length,
        //     itemBuilder: (BuildContext context, int index){
        //       return GestureDetector(
        //         onTap: (){
        //           // Navigator.push(context, MaterialPageRoute(builder: (context)=>Offers_Product(detailsOfOffers:offers[index],)));
        //         },
        //         child: ListTile(
        //          title: Text(connn[index].conName),
        //           leading: Text(connn[index].conSortName),
        //           trailing: Text(connn[index].conSortNumber),
        //         ),
        //       );
        //
        //     }),
      ),
    );
  }
}
