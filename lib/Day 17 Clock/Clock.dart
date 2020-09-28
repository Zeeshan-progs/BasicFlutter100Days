import 'Export/export.dart';

class Clock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: SettingIcon(),
      actions: [AddButton()],
    );
  }
}
