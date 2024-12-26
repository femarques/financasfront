import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/routes.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

double getScreenWidth(BuildContext context) {
  return MediaQuery.sizeOf(context).width;
}

double getScreenHeight(BuildContext context) {
  return MediaQuery.sizeOf(context).height;
}

Widget fieldLabel(BuildContext context, String label) {
  return Text(
    label,
    style: TextStyles.label,
    textAlign: TextAlign.left,
    // textScaler: textScaler(context)
  );
}

Widget primaryButton(
    {String? label, Function()? onPressed, bool matchParentWidth = false}) {
  return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
          minimumSize: matchParentWidth ? const Size.fromHeight(40) : null,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(radius))),
      child: Text(label ?? ""));
}

Widget secondaryButton(
    {String? label, Function()? onPressed, bool matchParentWidth = false}) {
  return FilledButton.tonal(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
          minimumSize: matchParentWidth ? const Size.fromHeight(40) : null,
          side: const BorderSide(color: lightOrange),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(radius))),
      child: Text(label ?? ""));
}

void navigateToPage(BuildContext context, AppPage page) {
  Navigator.pushNamed(context, page.route);
}

Widget navigatorListTile({required BuildContext context, required String title, required AppPage page}) {
  return ListTile(title: Text(title), onTap: () => navigateToPage(context, page));
}

Widget navigatorDrawer({required BuildContext context}){
  List<Widget> tiles = [const ListTile(title: Text("Finanças"))];
  for (var page in AppPage.values) {
    tiles.add(navigatorListTile(context: context, title: page.name, page: page));
  }
  return Drawer(
    child: ListView(children: tiles)
  );
}
class ExampleGridSource extends DataGridSource {
  
  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    List<Widget> cells = [];
    for (var cell in row.getCells()){
      var element = Container(
        padding: const EdgeInsets.all(8.0),
        alignment: Alignment.centerLeft,
        child: Text(cell.toString())
      );
      cells.add(element);
    }
    return DataGridRowAdapter(cells: cells);    
    
  }
  
}
Widget dataGrid(){
  List<GridColumn> columns = [];
  DataGridSource source = DataGridSource();
  return SfDataGrid(
    source: source,
    columns: columns
    );
}

// BottomNavigationBar bottomNavigationBar() {
//   return BottomNavigationBar(items: const [
//     BottomNavigationBarItem(icon: Icon(Icons.edit_note), label: "Cadastros"),
//     BottomNavigationBarItem(
//         icon: Icon(Icons.analytics_outlined), label: "Visões"),
//     BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Configurações"),
//   ]);
// }

Widget baseScaffold(
    {required BuildContext context,
    required Widget child,
    bool showDrawer = true}) {
  final screenWidth = getScreenWidth(context);
  final screenHeight = getScreenHeight(context);

  return SafeArea(
      child: Scaffold(
    resizeToAvoidBottomInset: true,
    appBar: AppBar(
      title: const Text("Financas"),
    ),
    drawer: navigatorDrawer(context: context),
    body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: screenHeight * 0.05, horizontal: screenWidth * 0.10),
            child: child)),
    // bottomNavigationBar: bottomNavigationBar(),
  ));
}
