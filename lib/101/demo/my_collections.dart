import 'package:flutter/material.dart';

class MyCollectionDemo extends StatefulWidget {
  const MyCollectionDemo({super.key});

  @override
  State<MyCollectionDemo> createState() => _MyCollectionDemoState();
}

class _MyCollectionDemoState extends State<MyCollectionDemo> {
  late final List<CollectionModel> _items;
  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        padding: PaddingUtility().paddingHorizontal,
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return _CategoryCard(model: _items[index]);
        },
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({
    super.key,
    required CollectionModel model,
  }) : _model = model;

  final CollectionModel _model;
  final String _moneyUnit = 'eth';

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility().paddingBottom,
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: PaddingUtility().paddingAll,
          child: Column(
            children: [
              Expanded(
                  child: Image.asset(
                _model.imagePath,
                fit: BoxFit.cover,
              )),
              Padding(
                padding: PaddingUtility().paddingTop,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(_model.title),
                    Text('${_model.price} $_moneyUnit')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final int price;

  CollectionModel(
      {required this.imagePath, required this.title, required this.price});
}

class PaddingUtility {
  final paddingBottom = const EdgeInsets.only(bottom: 20);
  final paddingTop = const EdgeInsets.only(top: 20);
  final paddingAll = const EdgeInsets.all(20);
  final paddingHorizontal = const EdgeInsets.symmetric(horizontal: 20);
}

class CollectionItems {
  late final List<CollectionModel> items;
  CollectionItems() {
    items = [
      CollectionModel(
          imagePath: ProjectImages.image, title: 'Abstract Art1', price: 3),
      CollectionModel(
          imagePath: ProjectImages.image, title: 'Abstract Art2', price: 3),
      CollectionModel(
          imagePath: ProjectImages.image, title: 'Abstract Art3', price: 3),
      CollectionModel(
          imagePath: ProjectImages.image, title: 'Abstract Art4', price: 3)
    ];
  }
}

class ProjectImages {
  static const image = 'assets/png/image_collection.png';
}
