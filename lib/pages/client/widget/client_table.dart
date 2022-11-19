import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

import '../../../constant/style.dart';
import '../../../widgets/custom_text.dart';
class ClientTable extends StatelessWidget {
  const ClientTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      margin: EdgeInsets.only(bottom: 30,top: 10),
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
          Container(
            height: MediaQuery.of(context).size.height * 0.8,
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
                    12,
                        (index) => DataRow(cells: [
                      DataCell(CustomText(
                        text: "Ishwar",
                      )),
                      DataCell(CustomText(
                        text: "Jodhpur",
                      )),
                      DataCell(Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.deepOrange,
                            size: 18,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          CustomText(
                            text: "4.$index",
                          )
                        ],
                      )),
                      DataCell(Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: active, width: .5),
                          color: light,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        child: CustomText(
                          text: "Block Client",
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