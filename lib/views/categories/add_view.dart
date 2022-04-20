import 'package:fluent_ui/fluent_ui.dart';

class AddView extends StatefulWidget {
  const AddView({ Key? key }) : super(key: key);

  @override
  State<AddView> createState() => _AddViewState();
}

class _AddViewState extends State<AddView> {
  bool disabled = false;

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage.scrollable(
      header: PageHeader(
        title: const Text('Add Category'),
        commandBar: ToggleSwitch(
          checked: disabled,
          onChanged: (v) => setState(() => disabled = v),
          content: const Text('Disabled'),
        ),
      ),
      children: const <Widget>[
        Text('Add Category'),
      ],
    );
  }
}
