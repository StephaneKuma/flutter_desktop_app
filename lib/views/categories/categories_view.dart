import 'package:fluent_ui/fluent_ui.dart';

import 'add_view.dart';

class CategoriesView extends StatefulWidget {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  State<CategoriesView> createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  bool disabled = false;

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage.scrollable(
      header: PageHeader(
        title: const Text('Categories'),
        commandBar: IconButton(
          icon: const Icon(FluentIcons.add),
          onPressed: () {
            Navigator.of(context).push(
              FluentPageRoute(
                builder: (_) => const AddView(),
              ),
            );
          },
        ),
      ),
      children: const <Widget>[
        Text('Categories'),
      ],
    );
  }
}
