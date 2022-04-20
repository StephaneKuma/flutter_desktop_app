import 'package:fluent_ui/fluent_ui.dart';

class TagsView extends StatefulWidget {
  const TagsView({ Key? key }) : super(key: key);

  @override
  State<TagsView> createState() => _TagsViewState();
}

class _TagsViewState extends State<TagsView> {
  bool disabled = false;

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage.scrollable(
      header: PageHeader(
        title: const Text('Tags'),
        commandBar: ToggleSwitch(
          checked: disabled,
          onChanged: (v) => setState(() => disabled = v),
          content: const Text('Disabled'),
        ),
      ),
      children: const <Widget>[
        Text('Tags'),
      ],
    );
  }
}
