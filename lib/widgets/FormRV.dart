import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pfe/screens/home_screen.dart';

class FormRV extends StatefulWidget {
  const FormRV({Key? key}) : super(key: key);

  @override
  State<FormRV> createState() => _FormRVState();
}

class _FormRVState extends State<FormRV> {
  List<String> items = [
    'PECB_ISO_27001_Lead_Implementer ',
    'PECB_ISO_27001_Lead_Auditor',
    'PECB_ISO_27005_Risk_Manager'
  ];
  String? selectedItem = 'PECB_ISO_27001_Lead_Implementer ';

  DateTime date = DateTime(2022, 04, 04);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: () async {
                await FirebaseAuth.instance.signOut().then((value) =>
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                        (route) => false));
              },
            ),
          ],
          title: const Text('Remplir Cet Formulaire'),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: const Text('Intelligence_Security_IT',
                    style: TextStyle(fontSize: 20)),
                accountEmail: Text('Fix / Fax : (+216) 71 815 216'),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://itsocial.fr/wp-content/uploads/2020/10/cybersecurity-lock-696x404.jpg'),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text(' Accueil'),
                onTap: () => null,
                trailing: ClipOval(
                    child: Container(
                  color: Colors.red,
                  width: 20,
                  height: 20,
                  child: Center(
                    child: Text('3',
                        style: TextStyle(color: Colors.white, fontSize: 12)),
                  ),
                )),
              ),
              ListTile(
                leading: Icon(Icons.supervised_user_circle_sharp),
                title: Text(' Services'),
                onTap: () => null,
              ),
              ListTile(
                leading: Icon(Icons.format_list_numbered_rounded),
                title: Text(' Formations'),
                onTap: () => null,
              ),
              ListTile(
                leading: Icon(Icons.share),
                title: Text(' Partager'),
                onTap: () => null,
              ),
              ListTile(
                leading: Icon(Icons.contact_page),
                title: Text(' Contact'),
                onTap: () => null,
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text(' Quitter'),
                onTap: () => null,
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
            child: Container(
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
          child: Form(
            child: Column(
              children: <Widget>[
                Image.asset(
                  'assets/rdv.png',
                  height: 150.0,
                  width: 150.0,
                ),
                Center(
                  child: Text('Prendre RV',
                      style: Theme.of(context).textTheme.headline1),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Nom', border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Prénom', border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Gmail', border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Téléphone', border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Center(
                  child: Row(
                    children: [
                      Text(
                        'Date :',
                        style: TextStyle(fontSize: 25.0),
                      ),
                      SizedBox(width: 70.0),
                      Text(
                        '${date.year}/${date.month}/${date.day}',
                        style: TextStyle(fontSize: 25.0),
                      ),
                      SizedBox(width: 70.0),
                      ElevatedButton(
                        child: (Text('Select Date')),
                        onPressed: () async {
                          DateTime? newDate = await showDatePicker(
                              context: context,
                              initialDate: date,
                              firstDate: DateTime(2022),
                              lastDate: DateTime(2070));
                          //if cancel => null
                          if (newDate == null) return;
                          //if ok datetime
                          setState(() => date = newDate);
                          //ButtonColor : Color.fromARGB(255, 14, 12, 134);
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Center(
                  child: SizedBox(
                    width: 450,
                    child: Container(
                      decoration: BoxDecoration(),
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(width: 1, color: Colors.white),
                        )),
                        value: selectedItem,
                        items: items
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(item,
                                      style: TextStyle(fontSize: 15)),
                                ))
                            .toList(),
                        onChanged: (item) =>
                            setState(() => selectedItem = item),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 8),
                        child: new ButtonBar(
                          alignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FlatButton(
                              child: Text(
                                "Envoyer",
                                style: TextStyle(fontSize: 20),
                              ),
                              textColor: Colors.white,
                              color: Color.fromARGB(
                                  255, 14, 12, 134), //RGB(255, 107, 33, 243),
                              onPressed: () {},
                            ),
                            SizedBox(
                              width: 50.0,
                            ),
                            FlatButton(
                              child: Text(
                                "Annuler",
                                style: TextStyle(fontSize: 20),
                              ),
                              textColor: Colors.white,
                              color: Color.fromARGB(255, 14, 12, 134),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
