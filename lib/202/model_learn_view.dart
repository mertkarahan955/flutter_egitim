import 'package:flutter/material.dart';
import 'package:flutter_application_2/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  var user9 = PostModel8(body: 'a');
  @override
  void initState() {
    super.initState();
    final user1 = PostModel()
      ..userId = 1
      ..title = 'mk';
    user1.body = 'hello';

    final user2 = PostModel2(1, 2, 'a', 'b');
    user2.body = 'c';

    final user3 = PostModel3(1, 2, 'a', 'b');
    // user3.body = 'c'; cannot change

    final user4 = PostModel4(userId: 1, id: 2, title: 'a', body: 'b');
    // user4.body = 'c'; cannot change

    final user5 = PostModel5(userId: 1, id: 2, title: 'a', body: 'b');
    // user5. private
    user5.userId; // we can reach userId because we created a getter method
    final user6 = PostModel6(userId: 1, id: 2, title: 'a', body: 'b');

    final user7 = PostModel7();

    // servisten data cekerken en iyisi
    final user8 = PostModel8(body: 'a');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            user9 = user9.copyWith(title: 'mk');
            user9.updateBody(null);
          });
        },
      ),
      appBar: AppBar(
        title: Text(user9.title ?? 'not any data'),
      ),
    );
  }
}
