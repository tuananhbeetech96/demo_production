import 'package:flutter/material.dart';
import 'package:music_app/features/data/models/section_model/section_response_model.dart';

import '../../../../core/constants/app_text_styles.dart';

class SectionDialog extends StatefulWidget {
  const SectionDialog({
    super.key,
    required this.listSection,
  });

  final List<SectionResponseModel> listSection;

  @override
  State<SectionDialog> createState() => _SectionDialogState();
}

class _SectionDialogState extends State<SectionDialog>
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
                    child: ListView.builder(
                      itemCount: widget.listSection.length,
                      itemBuilder: (BuildContext context, int index){
                        return ListTile(
                          title: Text(
                            widget.listSection[index].name ?? '',
                            style: const TextStyle(fontSize: 14, fontFamily: AppTextStyles.fontFamily),
                          ),
                        );
                      },
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}