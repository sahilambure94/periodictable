import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:periodictable/etc/colors/colors.dart';
import 'package:periodictable/screens/widgets/button.dart';
import 'package:periodictable/screens/widgets/close_button.dart';

class ElementViewer extends StatelessWidget {
  final String elementSymbol;
  final String elementName;
  final String element3dpath;
  final String elementType;
  final String elementNo;
  final String elementAtomicMass;
  final String elementMeltingPoint;
  final String elementBoilingPoint;
  final String elementFunFact;
  final Color elementButtonColor;

  const ElementViewer({
    super.key,
    required this.elementSymbol,
    required this.elementName,
    required this.element3dpath,
    required this.elementType,
    required this.elementNo,
    required this.elementAtomicMass,
    required this.elementMeltingPoint,
    required this.elementBoilingPoint,
    required this.elementFunFact,
    required this.elementButtonColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 32,
            top: 32,
            right: 32,
            bottom: 32,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElementButton(
                              text: elementSymbol,
                              colorInput: elementButtonColor,
                            ),
                            Text(
                              elementName,
                              style: TextStyle(
                                fontSize: 24.88,
                              ),
                            ),
                            CloseButtonElement(onTap: () {
                              Navigator.pop(context);
                            }),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width,
                    // decoration:
                    //     BoxDecoration(border: Border.all(color: Colors.black)),
                    child: Center(
                      child: ModelViewer(
                        backgroundColor: Colors.transparent,
                        src: 'assets/3d/$element3dpath',
                        ar: true,
                        autoPlay: true,
                        disableZoom: false,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Info',
                        style: TextStyle(
                          fontSize: 24.88,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Symbol: $elementSymbol',
                        style: TextStyle(
                          color: AppColor.textColor,
                          fontFamily: 'Degular',
                          fontSize: 24.88,
                        ),
                      ),
                      Text(
                        'Type: $elementType',
                        style: TextStyle(
                          color: AppColor.textColor,
                          fontFamily: 'Degular',
                          fontSize: 24.88,
                        ),
                      ),
                      Text(
                        'No: $elementNo',
                        style: TextStyle(
                          color: AppColor.textColor,
                          fontFamily: 'Degular',
                          fontSize: 24.88,
                        ),
                      ),
                      Text(
                        'Atomic Mass: $elementAtomicMass u',
                        style: TextStyle(
                          color: AppColor.textColor,
                          fontFamily: 'Degular',
                          fontSize: 24.88,
                        ),
                      ),
                      Text(
                        'Melting Point: $elementMeltingPoint K',
                        style: TextStyle(
                          color: AppColor.textColor,
                          fontFamily: 'Degular',
                          fontSize: 24.88,
                        ),
                      ),
                      Text(
                        'Boiling Point: $elementBoilingPoint K',
                        style: TextStyle(
                          color: AppColor.textColor,
                          fontFamily: 'Degular',
                          fontSize: 24.88,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Fun Fact',
                        style: TextStyle(
                          fontSize: 24.88,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        elementFunFact,
                        style: TextStyle(
                          color: AppColor.textColor,
                          fontFamily: 'Degular',
                          fontSize: 24.88,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
// style: TextStyle(
//                       color: AppColor.textColor,
//                       fontFamily: 'Degular',
//                       fontSize: 24.88,
//                     ), 