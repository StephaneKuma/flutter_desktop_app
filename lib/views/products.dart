import 'package:fluent_ui/fluent_ui.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({ Key? key }) : super(key: key);

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  bool disabled = false;

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage.scrollable(
      header: PageHeader(
        title: const Text('Products'),
        commandBar: ToggleSwitch(
          checked: disabled,
          onChanged: (v) => setState(() => disabled = v),
          content: const Text('Disabled'),
        ),
      ),
      children: const <Widget>[
        Text('Products'),
      ],
    );
  }
}
