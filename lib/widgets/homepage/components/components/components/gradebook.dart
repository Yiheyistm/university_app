import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class GradeBook extends StatelessWidget {
  final double gpa;

  const GradeBook(this.gpa, {super.key});
  @override
  Widget build(BuildContext context) {
    print(gpa);
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(left: 10, right: 5),
      constraints: BoxConstraints.expand(
        height: MediaQuery.of(context).size.height * 0.24,
        width: MediaQuery.of(context).size.width * 0.48,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(255, 211, 195, 51),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'GradeBook',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.school),
            ],
          ),
          Expanded(
            child: SfRadialGauge(
              enableLoadingAnimation: true,
              animationDuration: 2000,
              axes: <RadialAxis>[
                RadialAxis(
                  showLabels: false,
                  showTicks: false,
                  minimum: 0.0,
                  maximum: 4.0,
                  canScaleToFit: true,
                  pointers: <GaugePointer>[
                    NeedlePointer(
                      value: gpa,
                      enableAnimation: true,
                      animationType: AnimationType.ease,
                      needleColor: Colors.redAccent,
                      knobStyle: const KnobStyle(
                        color: Colors.red,
                        borderColor: Colors.blue,
                        knobRadius: 0.09,
                      ),
                    ),
                  ],
                  ranges: <GaugeRange>[
                    GaugeRange(
                      startValue: 0,
                      endValue: gpa.isNaN || gpa < 0.0
                          ? 0.1
                          : gpa.clamp(0.1,
                              4.0), // Ensure endValue is greater than startValue
                      color: Colors.redAccent,
                    ),
                  ],
                  annotations: <GaugeAnnotation>[
                    GaugeAnnotation(
                      verticalAlignment: GaugeAlignment.center,
                      widget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '$gpa',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                          const Text(
                            'GPA',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                      angle: 90,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
