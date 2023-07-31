import 'package:flutter/material.dart';
import 'package:periodictable/screens/element/elementviewer.dart';
import 'package:periodictable/screens/widgets/button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 32,
                  top: 32,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Periodic Table',
                      style: TextStyle(fontSize: 24.88),
                    ),
                    Text(
                      'Left Row',
                      style: TextStyle(fontSize: 18.66),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 32,
                    right: 32,
                    bottom: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ElementButton(
                        text: 'H',
                        colorInput: Colors.blueAccent,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ElementViewer(
                                elementName: 'Hydrogen',
                                elementSymbol: 'H',
                                elementButtonColor: Colors.blueAccent,
                                element3dpath: 'h.glb',
                                elementNo: '1',
                                elementType: 'Reactive non-metals',
                                elementAtomicMass: '1.0078',
                                elementMeltingPoint: '13.99',
                                elementBoilingPoint: '20.28',
                                elementFunFact:
                                    'Did you know? Hydrogen is the primary component responsible for the colorful hues in fireworks, as its combustion produces vibrant and dazzling explosions of light.',
                              ),
                            ),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          ElementButton(
                            text: 'Li',
                            colorInput: Colors.greenAccent,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ElementViewer(
                                    elementName: 'Lithium',
                                    elementSymbol: 'Li',
                                    elementButtonColor: Colors.greenAccent,
                                    element3dpath: 'li.glb',
                                    elementNo: '3',
                                    elementType: 'Alkali metals',
                                    elementAtomicMass: '6.9410',
                                    elementMeltingPoint: '453.69',
                                    elementBoilingPoint: '1615.15',
                                    elementFunFact:
                                        'Did you know? Lithium, the lightest metal on Earth, has a unique ability to enhance the color and brightness of fireworks, creating dazzling displays in the night sky.',
                                  ),
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          ElementButton(
                            text: 'Be',
                            colorInput: Colors.redAccent,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ElementViewer(
                                    elementName: 'Beryllium',
                                    elementSymbol: 'Be',
                                    elementButtonColor: Colors.redAccent,
                                    element3dpath: 'be.glb',
                                    elementNo: '4',
                                    elementType: 'Alkaline earth metals',
                                    elementAtomicMass: '9.0122',
                                    elementMeltingPoint: '1560',
                                    elementBoilingPoint: '2742.15',
                                    elementFunFact:
                                        'Did you know? Beryllium is a highly toxic element, but it has one peculiar use—some guitar enthusiasts prefer beryllium-copper alloy frets for their instruments, as they provide exceptional tonal clarity and sustain.',
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          ElementButton(
                            text: 'na',
                            colorInput: Colors.greenAccent,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ElementViewer(
                                    elementName: 'Sodium',
                                    elementSymbol: 'Na',
                                    elementButtonColor: Colors.greenAccent,
                                    element3dpath: 'na.glb',
                                    elementNo: '11',
                                    elementType: 'Alkali metals',
                                    elementAtomicMass: '22.990',
                                    elementMeltingPoint: '370.94',
                                    elementBoilingPoint: '1156',
                                    elementFunFact:
                                        "Did you know? Sodium is not only an essential element for our bodies but also adds a burst of yellow color when thrown into a flame, making it a key ingredient in street performer's 'sodium flare' tricks.",
                                  ),
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          ElementButton(
                            text: 'mg',
                            colorInput: Colors.redAccent,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ElementViewer(
                                    elementName: 'Magnesium',
                                    elementSymbol: 'Mg',
                                    elementButtonColor: Colors.redAccent,
                                    element3dpath: 'mg.glb',
                                    elementNo: '12',
                                    elementType: 'Alkaline earth metals',
                                    elementAtomicMass: '24.305',
                                    elementMeltingPoint: '923.15',
                                    elementBoilingPoint: '1364.15',
                                    elementFunFact:
                                        "Did you know? Magnesium is often used in pyrotechnics and fireworks due to its brilliant white light when ignited, earning it the nickname 'nature's sparkler.'",
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          ElementButton(
                            text: 'K',
                            colorInput: Colors.greenAccent,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ElementViewer(
                                    elementName: 'Potassium',
                                    elementSymbol: 'K',
                                    elementButtonColor: Colors.greenAccent,
                                    element3dpath: 'k.glb',
                                    elementNo: '19',
                                    elementType: 'Alkali metals',
                                    elementAtomicMass: '39.098',
                                    elementMeltingPoint: '336.65',
                                    elementBoilingPoint: '1032',
                                    elementFunFact:
                                        "Did you know? Potassium is highly reactive with water and can create a vigorous reaction, resulting in a dancing and popping effect known as the 'potassium firework' when dropped into a container of water.",
                                  ),
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          ElementButton(
                            text: 'Ca',
                            colorInput: Colors.redAccent,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ElementViewer(
                                    elementName: 'Calcium',
                                    elementSymbol: 'Ca',
                                    elementButtonColor: Colors.redAccent,
                                    element3dpath: 'ca.glb',
                                    elementNo: '20',
                                    elementType: 'Alkaline earth metals',
                                    elementAtomicMass: '40.078',
                                    elementMeltingPoint: '1115.15',
                                    elementBoilingPoint: '1757',
                                    elementFunFact:
                                        "Did you know? Calcium not only contributes to strong bones and teeth, but it also plays a crucial role in muscle contraction, making it essential for activities like walking, running, and even dancing.",
                                  ),
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          ElementButton(
                            text: 'Sc',
                            colorInput: Colors.indigoAccent,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ElementViewer(
                                    elementName: 'Scandium',
                                    elementSymbol: 'Sc',
                                    elementButtonColor: Colors.indigoAccent,
                                    element3dpath: 'sc.glb',
                                    elementNo: '21',
                                    elementType: 'Transition metals',
                                    elementAtomicMass: '44.956',
                                    elementMeltingPoint: '1814',
                                    elementBoilingPoint: '3109',
                                    elementFunFact:
                                        "Did you know? Scandium, a rare transition metal, has the unique ability to strengthen aluminum alloys, making them lighter, stronger, and more heat-resistant, thereby finding applications in aerospace and sports equipment.",
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          ElementButton(
                            text: 'Rb',
                            colorInput: Colors.greenAccent,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ElementViewer(
                                    elementName: 'Rubidium',
                                    elementSymbol: 'Rb',
                                    elementButtonColor: Colors.greenAccent,
                                    element3dpath: 'rb.glb',
                                    elementNo: '37',
                                    elementType: 'Alkali metals',
                                    elementAtomicMass: '85.468',
                                    elementMeltingPoint: '312.63',
                                    elementBoilingPoint: '961.15',
                                    elementFunFact:
                                        "Did you know? Rubidium, an alkali metal, is so reactive that it can spontaneously catch fire when exposed to air, creating a mesmerizing violet flame that adds a touch of excitement to chemical demonstrations.",
                                  ),
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          ElementButton(
                            text: 'Sr',
                            colorInput: Colors.redAccent,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ElementViewer(
                                    elementName: 'Strontium',
                                    elementSymbol: 'Sr',
                                    elementButtonColor: Colors.redAccent,
                                    element3dpath: 'sr.glb',
                                    elementNo: '38',
                                    elementType: 'Alkaline earth metals',
                                    elementAtomicMass: '87.620',
                                    elementMeltingPoint: '1050.15',
                                    elementBoilingPoint: '1655',
                                    elementFunFact:
                                        "Did you know? Strontium is a versatile element that not only gives fireworks their vibrant red color but is also used in medical imaging as a radioactive tracer to visualize bone structure and detect certain medical conditions.",
                                  ),
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          ElementButton(
                            text: 'Y',
                            colorInput: Colors.indigoAccent,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ElementViewer(
                                    elementName: 'Yttrium',
                                    elementSymbol: 'Y',
                                    elementButtonColor: Colors.indigoAccent,
                                    element3dpath: 'mg.glb',
                                    elementNo: '39',
                                    elementType: 'Alkaline earth metals',
                                    elementAtomicMass: '24.305',
                                    elementMeltingPoint: '1799.15',
                                    elementBoilingPoint: '3611',
                                    elementFunFact:
                                        "Did you know? Yttrium, a rare earth metal, is utilized in the production of high-performance camera lenses and LEDs, enhancing their optical and electrical properties, and contributing to sharper images and vibrant lighting displays.",
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          ElementButton(
                            text: 'Cs',
                            colorInput: Colors.greenAccent,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ElementViewer(
                                    elementName: 'Caesium',
                                    elementSymbol: 'Cs',
                                    elementButtonColor: Colors.greenAccent,
                                    element3dpath: 'cs.glb',
                                    elementNo: '55',
                                    elementType: 'Alkali metals',
                                    elementAtomicMass: '132.91',
                                    elementMeltingPoint: '301.59',
                                    elementBoilingPoint: '944',
                                    elementFunFact:
                                        "Did you know? Caesium, an alkali metal, is so reactive that it can create explosive reactions when in contact with water, resulting in a dramatic release of hydrogen gas and a burst of violet flames, making it a fascinating element for scientific demonstrations.",
                                  ),
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          ElementButton(
                            text: 'Ba',
                            colorInput: Colors.redAccent,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ElementViewer(
                                    elementName: 'Barium',
                                    elementSymbol: 'Ba',
                                    elementButtonColor: Colors.redAccent,
                                    element3dpath: 'ba.glb',
                                    elementNo: '56',
                                    elementType: 'Alkaline earth metals',
                                    elementAtomicMass: '137.33',
                                    elementMeltingPoint: '1000.15',
                                    elementBoilingPoint: '2170.15',
                                    elementFunFact:
                                        "Did you know? Barium compounds, such as barium sulfate, are used in medical imaging as a contrast agent to enhance X-ray and CT scan visibility, allowing for better visualization of the digestive system and certain medical conditions.",
                                  ),
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          ElementButton(
                            text: 'La',
                            colorInput: Colors.lightBlueAccent,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ElementViewer(
                                    elementName: 'Lanthanum',
                                    elementSymbol: 'La',
                                    elementButtonColor: Colors.lightBlueAccent,
                                    element3dpath: 'la.glb',
                                    elementNo: '57',
                                    elementType: 'Lanthanides',
                                    elementAtomicMass: '138.91',
                                    elementMeltingPoint: '1193.15',
                                    elementBoilingPoint: '3737',
                                    elementFunFact:
                                        "Did you know? Lanthanum, a rare earth metal, is utilized in the production of hybrid car batteries, as it helps improve their energy storage capacity and overall performance, contributing to more efficient and environmentally friendly transportation.",
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          ElementButton(
                            text: 'Fr',
                            colorInput: Colors.greenAccent,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ElementViewer(
                                    elementName: 'Francium',
                                    elementSymbol: 'Fr',
                                    elementButtonColor: Colors.greenAccent,
                                    element3dpath: 'fr.glb',
                                    elementNo: '87',
                                    elementType: 'Alkaline metals',
                                    elementAtomicMass: '223',
                                    elementMeltingPoint: '300.15',
                                    elementBoilingPoint: '950.15',
                                    elementFunFact:
                                        "Did you know? Francium is an extremely rare and highly radioactive alkali metal. It is so unstable that only tiny amounts have ever been produced, and it has no practical applications.",
                                  ),
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          ElementButton(
                            text: 'Ra',
                            colorInput: Colors.redAccent,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ElementViewer(
                                    elementName: 'Radium',
                                    elementSymbol: 'Ra',
                                    elementButtonColor: Colors.redAccent,
                                    element3dpath: 'ra.glb',
                                    elementNo: '88',
                                    elementType: 'Alkaline earth metals',
                                    elementAtomicMass: '226',
                                    elementMeltingPoint: '973.15',
                                    elementBoilingPoint: '2010.15',
                                    elementFunFact:
                                        "Did you know? Radium, a radioactive element, was once used in various consumer products, including glow-in-the-dark paint and self-luminous watch dials, before its harmful effects were fully understood, leading to its subsequent discontinuati",
                                  ),
                                ),
                              );
                            },
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          ElementButton(
                            text: 'Ac',
                            colorInput: Colors.brown,
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ElementViewer(
                                    elementName: 'Actinium',
                                    elementSymbol: 'Ac',
                                    elementButtonColor: Colors.brown,
                                    element3dpath: 'ac.glb',
                                    elementNo: '89',
                                    elementType: 'Actinides',
                                    elementAtomicMass: '227',
                                    elementMeltingPoint: '1323.15',
                                    elementBoilingPoint: '3470',
                                    elementFunFact:
                                        "Did you know? Actinium, a radioactive element, is primarily used in medical applications, particularly in radiation therapy to treat certain types of cancer, as it emits high-energy alpha particles that can target and destroy cancer cells while minimizing damage to healthy tissues.",
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
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
}
