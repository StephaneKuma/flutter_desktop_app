import 'package:fluent_ui/fluent_ui.dart';

class UsersView extends StatefulWidget {
  const UsersView({ Key? key }) : super(key: key);

  @override
  State<UsersView> createState() => _UsersViewState();
}

class _UsersViewState extends State<UsersView> {
  bool disabled = false;

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage.scrollable(
      header: PageHeader(
        title: const Text('Users'),
        commandBar: ToggleSwitch(
          checked: disabled,
          onChanged: (v) => setState(() => disabled = v),
          content: const Text('Disabled'),
        ),
      ),
      children: const <Widget>[
        Text('Users'),
      ],
    );
  }
}
