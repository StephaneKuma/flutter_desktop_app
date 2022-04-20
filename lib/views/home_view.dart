import 'package:fluent_ui/fluent_ui.dart';

import 'categories/categories_view.dart';
import 'products.dart';
import 'tags_view.dart';
import 'users_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _key = GlobalKey();

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      key: _key,
      appBar: const NavigationAppBar(
        title: Text('Desktop App'),
      ),
      pane: NavigationPane(
        selected: index,
        onChanged: (i) => setState(() => index = i),
        header: Container(
          height: kOneLineTileHeight,
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: const FlutterLogo(
            style: FlutterLogoStyle.horizontal,
            size: 100.0,
          ),
        ),
        displayMode: PaneDisplayMode.auto,
        items: <NavigationPaneItem>[
          PaneItem(
            icon: const Icon(
              FluentIcons.category_classification,
            ),
            title: const Text('Categories'),
          ),
          PaneItem(
            icon: const Icon(
              FluentIcons.tag_group,
            ),
            title: const Text('Tags'),
          ),
          PaneItem(
            icon: const Icon(
              FluentIcons.product_catalog,
            ),
            title: const Text('Products'),
          ),
          PaneItemSeparator(),
          PaneItem(
            icon: const Icon(
              FluentIcons.people,
            ),
            title: const Text('User'),
          ),
        ],
      ),
      content: NavigationBody(
        index: index,
        children: const <Widget>[
          CategoriesView(),
          TagsView(),
          ProductsView(),
          UsersView(),
        ],
      ),
    );
  }
}
