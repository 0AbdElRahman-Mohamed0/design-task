import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'Models/juiceModel.dart';

final _juiceList = [
  JuiceModel(
    name: 'Besom Yellow Juice',
    price: '19.99 \$',
    image: 'https://flutter4fun.com/wp-content/uploads/2021/09/juice1.png',
    color: const Color(0xFFF3BE39),
  ),
  JuiceModel(
    name: 'Besom Orange Juice',
    price: '25.99 \$',
    image: 'https://flutter4fun.com/wp-content/uploads/2021/09/juice2.png',
    color: const Color(0xFFDC691F),
  ),
  JuiceModel(
    name: 'Sugarcane juice.',
    price: '9.99 \$',
    image: 'https://flutter4fun.com/wp-content/uploads/2021/09/juice2.png',
    color: const Color(0xFFE76161),
  ),
  JuiceModel(
    name: 'Wheatgrass juice',
    price: '19.99 \$',
    image: 'https://flutter4fun.com/wp-content/uploads/2021/09/juice2.png',
    color: const Color(0xFFA4D0A4),
  ),
  JuiceModel(
    name: 'Grapefruit juice',
    price: '39.99 \$',
    image: 'https://flutter4fun.com/wp-content/uploads/2021/09/juice2.png',
    color: const Color(0xFF3C486B),
  ),
  JuiceModel(
    name: 'Fresh-squeezed orange juice',
    price: '19.99 \$',
    image: 'https://flutter4fun.com/wp-content/uploads/2021/09/juice2.png',
    color: const Color(0xFFDC691F),
  ),
  JuiceModel(
    name: 'Besom Orange Juice',
    price: '29.99 \$',
    image: 'https://flutter4fun.com/wp-content/uploads/2021/09/juice2.png',
    color: const Color(0xFFD21312),
  ),
  JuiceModel(
    name: 'Besom Orange Juice',
    price: '30.99 \$',
    image: 'https://flutter4fun.com/wp-content/uploads/2021/09/juice2.png',
    color: const Color(0xFFFF6000),
  ),
];

class ExerciseTwo extends StatefulWidget {
  const ExerciseTwo({Key? key}) : super(key: key);

  @override
  State<ExerciseTwo> createState() => _ExerciseTwoState();
}

class _ExerciseTwoState extends State<ExerciseTwo> {
  bool _firstDesign = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    if (_firstDesign) return;
                    _firstDesign = true;
                    setState(() {});
                  },
                  child: const Text('First Design'),
                ),
                const SizedBox(
                  width: 20,
                ),
                TextButton(
                  onPressed: () {
                    if (!_firstDesign) return;
                    _firstDesign = false;
                    setState(() {});
                  },
                  child: const Text('Second Design'),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(20),
                itemBuilder: (context, index) {
                  return _firstDesign
                      ? _JuiceWidget(
                          juiceModel: _juiceList[index],
                        )
                      : _SecondJuiceWidget(
                          juiceModel: _juiceList[index],
                        );
                },
                itemCount: _juiceList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _JuiceWidget extends StatelessWidget {
  final JuiceModel juiceModel;

  const _JuiceWidget({
    required this.juiceModel,
  });

  @override
  Widget build(BuildContext context) {
    var style = const TextStyle(
      color: Colors.white,
      fontSize: 16,
    );

    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: juiceModel.color,
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    juiceModel.name,
                    style: style,
                  ),
                  Text(
                    juiceModel.price,
                    style: style,
                  ),
                  CustomButton(
                    onTap: () {},
                    textColor: juiceModel.color,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CachedNetworkImage(
                imageUrl: juiceModel.image ?? '',
                imageBuilder: (context, imageProvider) => Container(
                  height: 130,
                  width: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imageProvider,
                    ),
                  ),
                ),
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    CircularProgressIndicator(value: downloadProgress.progress),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SecondJuiceWidget extends StatelessWidget {
  final JuiceModel juiceModel;

  const _SecondJuiceWidget({
    required this.juiceModel,
  });

  @override
  Widget build(BuildContext context) {
    var style = const TextStyle(
      color: Colors.white,
      fontSize: 16,
    );

    return Stack(
      alignment: Alignment.centerRight,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: juiceModel.color,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                juiceModel.name,
                style: style,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                juiceModel.price,
                style: style,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                onTap: () {},
                textColor: juiceModel.color,
              ),
            ],
          ),
        ),
        CachedNetworkImage(
          imageUrl: juiceModel.image ?? '',
          imageBuilder: (context, imageProvider) => Container(
            height: 210,
            width: 120,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: imageProvider,
              ),
            ),
          ),
          progressIndicatorBuilder: (context, url, downloadProgress) =>
              CircularProgressIndicator(value: downloadProgress.progress),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.textColor, this.onTap});

  final Color textColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Text(
          'Buy Now',
          style: TextStyle(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
