import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/widgets/custom_text.dart';

import '../../../constant/style.dart';

/// Example without a datasource
class AvaialbleDrivers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      margin: EdgeInsets.only(bottom: 30),
      // height: 500,
      // width: 500,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 1.0,
            )
          ],
          border: Border.all(color: lightGrey, width: .5)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              CustomText(
                text: "Available Drivers",
                color: lightGrey,
                weight: FontWeight.bold,
              )
            ],
          ),
          Container(
            height: 300,
            child: DataTable2(
                columnSpacing: 12,
                horizontalMargin: 12,
                minWidth: 600,
                columns: [
                  DataColumn2(
                    label: Text('Name'),
                    size: ColumnSize.L,
                  ),
                  DataColumn(
                    label: Text('Location'),
                  ),
                  DataColumn(
                    label: Text('Rating'),
                  ),
                  DataColumn(
                    label: Text('Action'),
                  ),
                ],
                rows: List<DataRow>.generate(
                    7,
                    (index) => DataRow(cells: [
                          DataCell(CustomText(
                            text: "Ishwar",
                          )),
                      DataCell(CustomText(
                            text: "Jodhpur",
                          )),
                      DataCell(
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.star,
                            color: Colors.deepOrange,
                            size: 18,
                            ),
                            SizedBox(width: 5,),
                            CustomText(
                              text: "4.$index",
                            )
                          ],
                        )
                      ),
                      DataCell(Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: active,
                          width: .5),
                          color: light,
                          borderRadius: BorderRadius.circular(20),

                        ),
                        padding: EdgeInsets.symmetric(horizontal: 12,vertical: 6),
                        child: CustomText(
                          text: "Available Delivery",
                          color: active.withOpacity(.7),
                          weight: FontWeight.bold,
                        ),
                      ))

                        ]))),
          ),
        ],
      ),
    );
  }
}
