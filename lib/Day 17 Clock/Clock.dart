

import 'Export/export.dart';

class Clock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          leading: SettingIcon(),
          actions: [
            AddButton()
          ],
        ),
        body: Body());
  }
}
