import 'package:etisalat_project/exercise_two.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Models/juiceModel.dart';

final _juiceList = [
  JuiceModel(
    name: 'Besom Yellow Juice',
    price: '19.99 \$',
    color: const Color(0xFFF3BE39),
  ),
  JuiceModel(
    name: 'Besom Orange Juice',
    price: '25.99 \$',
    color: const Color(0xFFDC691F),
  ),
  JuiceModel(
    name: 'Sugarcane juice.',
    price: '9.99 \$',
    color: const Color(0xFFE76161),
  ),
  JuiceModel(
    name: 'Wheatgrass juice',
    price: '19.99 \$',
    color: const Color(0xFFA4D0A4),
  ),
  JuiceModel(
    name: 'Grapefruit juice',
    price: '39.99 \$',
    color: const Color(0xFF3C486B),
  ),
  JuiceModel(
    name: 'Fresh-squeezed orange juice',
    price: '19.99 \$',
    color: const Color(0xFFDC691F),
  ),
  JuiceModel(
    name: 'Besom Orange Juice',
    price: '29.99 \$',
    color: const Color(0xFFD21312),
  ),
  JuiceModel(
    name: 'Besom Orange Juice',
    price: '30.99 \$',
    color: const Color(0xFFFF6000),
  ),
];

class ExerciseOne extends StatelessWidget {
  const ExerciseOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(20),
              itemBuilder: (context, index) {
                return _JuiceWidget(
                  juiceModel: _juiceList[index],
                  index: index,
                );
              },
              itemCount: _juiceList.length,
            ),
          ),
          TextButton(
            onPressed: () => Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (_) => const ExerciseTwo(),
              ),
            ),
            child: const Text('Exercise Two'),
          ),
        ],
      ),
    );
  }
}

class _JuiceWidget extends StatelessWidget {
  final JuiceModel juiceModel;
  final int index;

  const _JuiceWidget({required this.juiceModel, required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 18),
          child: Text('${index + 1}'),
        ),
        Expanded(
          child: ListTile(
            title: Text(juiceModel.name),
            trailing: Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(color: juiceModel.color),
            ),
            subtitle: Text(juiceModel.price),
          ),
        ),
      ],
    );
  }
}
