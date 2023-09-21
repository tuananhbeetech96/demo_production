import 'package:flutter/material.dart';
import 'package:music_app/core/constants/app_text_styles.dart';

import '../../../domain/entity/option_item.dart';

class OptionItemDialog extends StatefulWidget {
  const OptionItemDialog({
    super.key,
    required this.listOptionItem,
    required this.onClickBtn
  });

  final Function(List<OptionItem>) onClickBtn;
  final List<OptionItem> listOptionItem;

  @override
  State<OptionItemDialog> createState() => _OptionItemDialogState();
}

class _OptionItemDialogState extends State<OptionItemDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 100));
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          width: 300,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(bottom: 10),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child:  Material(
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child:  IconButton(onPressed: (){
                        Navigator.pop(context);
                      }, icon: const Icon(Icons.clear)),
                    ),
                    const Divider(
                      color: Colors.grey,
                      height: 4.0,
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                          maxHeight: 300.0,
                          minHeight: 200.0
                      ),
                      child: GridView.builder(
                        itemCount: widget.listOptionItem.length,
                        itemBuilder: (BuildContext context, int index){
                          return  SwitchListTile(
                            controlAffinity: ListTileControlAffinity.leading,
                            title: Text(
                              widget.listOptionItem[index].value,
                              style: const TextStyle(fontSize: 10, fontFamily: AppTextStyles.fontFamily),
                            ),
                            value: widget.listOptionItem[index].enable,
                            onChanged: (bool value) {
                              setState(() {
                                widget.listOptionItem[index].enable = value;
                              });
                            },

                          );
                        },
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 4,
                            mainAxisSpacing: 4,
                            mainAxisExtent: 50
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.grey,
                      height: 4.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: ElevatedButton(onPressed: (){
                        widget.onClickBtn(widget.listOptionItem);
                        Navigator.pop(context);
                      }, child: const Text('close')),
                    )
                  ]),
            ),
          ),
        ),
    );
  }
}