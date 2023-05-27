import 'package:flutter/material.dart';
import 'package:ui_practice/screens/welcome_page.dart';

class FormPage extends StatelessWidget {
  FormPage({Key? key}) : super(key: key);
  final _form_key = GlobalKey<FormState>();
  late String name = "name",
      id = "7187389274",
      department = "department",
      company = "hdbhdbjf",
      phone = "phone",
      address = "address",
      position = "positions";
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Page"),
      ),
      body: Form(
        // key: _form_key,
        child: Container(
          margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: screenHeight / 11,
                  child: TextFormField(
                    onChanged: (text) {
                      name = text;
                    },
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.person),
                      hintText: 'Enter your name',
                      labelText: 'Name',
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight / 11,
                  child: TextFormField(
                    onChanged: (text) {
                      department = text;
                    },
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.business),
                      hintText: 'Enter your department',
                      labelText: 'Dept',
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight / 11,
                  child: TextFormField(
                    onChanged: (text) {
                      position = text;
                    },
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.chair),
                      hintText: 'Enter your Position',
                      labelText: 'Position',
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight / 11,
                  child: TextFormField(
                    controller: controller,
                    onChanged: (text) {
                      id = text;
                    },
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.card_membership),
                      hintText: 'Enter your Id',
                      labelText: 'Id',
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight / 11,
                  child: TextFormField(
                    onChanged: (text) {
                      company = text;
                    },
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.build),
                      hintText: 'Enter your Institution',
                      labelText: 'Company',
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight / 11,
                  child: TextFormField(
                    onChanged: (text) {
                      address = text;
                    },
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.location_city),
                      hintText: 'Enter your Adress',
                      labelText: 'Address',
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight / 11,
                  child: TextFormField(
                    onChanged: (num) {
                      phone = num;
                    },
                    decoration: const InputDecoration(
                      icon: const Icon(Icons.phone),
                      hintText: 'Enter your Phone',
                      labelText: 'Phone',
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                    child: Center(
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => WelcomePage(
                                        name: name,
                                        id: id,
                                        phone: phone,
                                        department: department,
                                        company: company,
                                        position: position,
                                        address: address,
                                        controller: controller.text,
                                      )));
                            },
                            child: Text("Submit"))))
              ]),
        ),
      ),
    );
    ;
  }
}
