import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/features/presentation/blocs/product_management/product_management_bloc.dart';
import 'package:music_app/features/presentation/blocs/product_management/product_management_state.dart';
import 'package:music_app/features/presentation/ui/screen/base_screen_state.dart';

class ProductManagementScreen extends StatefulWidget {
  const ProductManagementScreen({Key? key}) : super(key: key);

  @override
  State<ProductManagementScreen> createState() => _ProductManagementScreenState();
}

class _ProductManagementScreenState extends BaseScreenState<ProductManagementScreen,ProductManagementBloc,ProductManagementState> {
  @override
  Widget buildContent(BuildContext context) {
    return BlocBuilder<ProductManagementBloc,ProductManagementState>(builder: (context,state){
      return Text("data");
    });
  }
}
