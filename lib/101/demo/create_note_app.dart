import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CreateNoteApp extends StatelessWidget {
  final create_note = 'Create your first note';

  final add_a_note = 'Add  note ';

  final _create_a_note = 'Create a note';

  final _import_note = 'Import notes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[50],
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        body: Padding(
          padding: PaddingItems.horizontalPadding,
          child: Column(
            children: [
              Image.asset(PngImages.apple_png),
              _TitleWidget(create_note: create_note),
              Padding(
                padding: PaddingItems.verticalPadding,
                child: _SubTitleWidget(
                  title: add_a_note,
                ),
              ),
              const Spacer(),
              _CreateButton(context),
              TextButton(onPressed: () {}, child: Text(_import_note)),
              SizedBox(height: ButtonHeight.buttonNormalHeight)
            ],
          ),
        ));
  }

  ElevatedButton _CreateButton(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: SizedBox(
          height: ButtonHeight.buttonNormalHeight,
          child: Center(
              child: Text(
            _create_a_note,
            style: Theme.of(context).textTheme.headline5,
          )),
        ));
  }
}

/// centered text widget
class _SubTitleWidget extends StatelessWidget {
  const _SubTitleWidget(
      {super.key, this.textAlign = TextAlign.center, required this.title});
  final TextAlign? textAlign;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(title * 5,
        textAlign: textAlign,
        style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.w300));
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    super.key,
    required this.create_note,
  });

  final String create_note;

  @override
  Widget build(BuildContext context) {
    return Text(create_note,
        style: Theme.of(context)
            .textTheme
            .headlineSmall
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.w800));
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 20);
}

class PngImages {
  static const apple_png = 'assets/png/apple_with_books.png';
}

class ButtonHeight {
  static const double buttonNormalHeight = 50;
}
