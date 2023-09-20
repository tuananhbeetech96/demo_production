import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/features/domain/entity/product_data.dart';
import 'package:music_app/features/presentation/blocs/product_management/product_management_bloc.dart';
import 'package:music_app/features/presentation/blocs/product_management/product_management_state.dart';
import 'package:music_app/features/presentation/ui/screen/base_screen_state.dart';
import 'package:horizontal_data_table/horizontal_data_table.dart';

import '../../../../domain/entity/option_item.dart';

class ProductManagementScreen extends StatefulWidget {
  const ProductManagementScreen({Key? key}) : super(key: key);

  @override
  State<ProductManagementScreen> createState() => _ProductManagementScreenState();
}

class _ProductManagementScreenState extends BaseScreenState<ProductManagementScreen,ProductManagementBloc,ProductManagementState> {
  @override
  Widget buildContent(BuildContext context) {
    return BlocBuilder<ProductManagementBloc,ProductManagementState>(builder: (context,state){
      return OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          debugPrint("orientation ${orientation}");
          return HorizontalDataTable(
            leftHandSideColumnWidth: 50,
            rightHandSideColumnWidth: state.searchState?.productDataFactory?.getTotalWidth() ?? 0,
            isFixedHeader: true,
            headerWidgets: _getTitleWidget(context,state.searchState?.productDataFactory?.fakeColum() ?? []),
            isFixedFooter: false,
            leftSideItemBuilder: _generateFirstColumnRow,
            rightSideItemBuilder: _generateRightHandSideColumnRow,
            itemCount: state.searchState?.productDataFactory?.itemCount() ?? 0,
            leftHandSideColBackgroundColor: const Color(0xFFFFFFFF),
            rightHandSideColBackgroundColor: const Color(0xFFFFFFFF),
            itemExtent: 55,
            onLoadMore: () async{

              return true;
            },
          );
        },
      );
    });
  }

  List<Widget> _getTitleWidget(BuildContext context,List<OptionItem> optionItems) {
    List<Widget> widgets = optionItems.map((e) =>
        _getTitleItemWidget(e.value, e.width)
    ).toList();


    if(widgets.isEmpty)  return [];

    bool isCheckAll = context.read<ProductManagementBloc>()
        .isCheckAll();

    widgets.insert(0, Container(
      color: Colors.orange,
      width: 50,
      height: 55,
      alignment: Alignment.centerLeft,
      child: Center(
        child: Checkbox(
          value: isCheckAll,
          onChanged: (check) {
            context.read<ProductManagementBloc>().checkAll(check ?? false);
            setState(() {
            });
          },
        ),
      ),
    ));
    return widgets;
  }

  Widget _getTitleItemWidget(String label, double width) {
    return Container(
      color: Colors.orange,
      width: width,
      height: 55,
      alignment: Alignment.center,
      child: Text(label),
    );
  }


  Widget _generateFirstColumnRow(BuildContext context, int index) {
    List<ProductData> row = context.read<ProductManagementBloc>()
                 .state.searchState?.productDataFactory?.getData()[index] ?? [];
    return Container(
      width: 50,
      height: 55,
      color: (row.firstOrNull?.isCheck ?? false) ? Colors.lightBlueAccent : Colors.white,
      alignment: Alignment.centerLeft,
      child: Center(
        child: Checkbox(
          value: (row.firstOrNull?.isCheck ?? false),
          onChanged: (check){
            setState(() {
              row.forEach((element) {
                element.isCheck = check ?? false;
              });
            });
          },
        ),
      ),
    );
  }

  Widget _generateRightHandSideColumnRow(BuildContext context, int index) {
    List<ProductData> row = context.read<ProductManagementBloc>().state.searchState?.productDataFactory?.getData()[index] ?? [];
    return Container(
      color: (row.firstOrNull?.isCheck ?? false) ? Colors.lightBlueAccent : Colors.white,
      child: Row(
        children: row.map((e) => Container(
          width: e.width,
          height: 55,
          alignment: Alignment.center,
          child: Text(e.value),
        )).toList(),
      ),
    );
  }
}
