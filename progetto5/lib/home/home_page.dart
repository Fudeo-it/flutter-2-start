import 'package:flutter/material.dart';
import 'package:progetto5/component/registration_section_field.dart';
import 'package:progetto5/component/registration_text_field.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SexModel? sex;
  double ral = 0;
  bool conditionsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          header(),
          body(),
        ],
      ),
    ));
  }

  Widget header() => Image.network(
      "https://images.unsplash.com/photo-1580508174046-170816f65662?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
      width: double.infinity,
      height: 200,
      fit: BoxFit.cover);

  Widget body() => Positioned(
        top: 190,
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              )),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                RegistrationSectionField(
                  title: "Nome",
                  child: RegistrationTextField(
                    hintText: "es: Mario Rossi",
                  ),
                ),
                RegistrationSectionField(
                  title: "Età",
                  child: RegistrationTextField(
                    hintText: "es: 23",
                    keyboardType: TextInputType.number,
                  ),
                ),
                RegistrationSectionField(
                    title: "Sesso",
                    child: Column(
                      children: [
                        RadioListTile(
                            title: Text("Uomo"),
                            contentPadding: EdgeInsets.all(0),
                            value: SexModel.male,
                            groupValue: sex,
                            activeColor: Colors.pink,
                            onChanged: (SexModel? value) => setState(() => sex = value)),
                        RadioListTile(
                            title: Text("Donna"),
                            contentPadding: EdgeInsets.all(0),
                            value: SexModel.female,
                            groupValue: sex,
                            activeColor: Colors.pink,
                            onChanged: (SexModel? value) => setState(() => sex = value)),
                      ],
                    )),
                RegistrationSectionField(
                  title: "RAL annuo (${(ral / 1000).round()}k)",
                  child: Slider(
                    value: ral,
                    min: 0,
                    max: 100000,
                    divisions: 1000,
                    thumbColor: Colors.pink,
                    activeColor: Colors.pink,
                    inactiveColor: Colors.pink.shade100,
                    label: "${(ral / 1000).round()}k",
                    onChanged: (value) => setState(() => ral = value),
                  ),
                ),
                RegistrationSectionField(
                  title: "Termini e condizioni d'uso",
                  child: SwitchListTile(
                    title: Text(conditionsAccepted ? "Accetto" : "Non accetto"),
                    value: conditionsAccepted,
                    activeColor: Colors.pink,
                    onChanged: (value) => setState(() => conditionsAccepted = value),
                  ),
                ),
                SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(
                      Size(double.infinity, 50),
                    ),
                    backgroundColor: MaterialStateProperty.all(
                      Colors.pink.shade400,
                    ),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                  ),
                  child: Text("Crea account",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                SizedBox(height: 32),
              ],
            ),
          ),
        ),
      );
}

enum SexModel {
  male,
  female,
}
