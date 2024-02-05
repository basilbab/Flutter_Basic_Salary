import 'package:flutter/material.dart';
import 'package:flutter_basic_salary/payroll.dart';

/// Flutter code sample for [AppBar].

void main() => runApp(const AppBarApp());

class AppBarApp extends StatelessWidget {

  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AppBarExample(),
    );
  }
}

class AppBarExample extends StatefulWidget {
  const AppBarExample({super.key});

  @override
  State<AppBarExample> createState() => _AppBarExampleState();
}

class _AppBarExampleState extends State<AppBarExample> {
  final _formKey = GlobalKey<FormState>();
  late String name = "";
  late String gender = "";
  late String marital = "";
  late String department = "";
  double basicsalval = 0.0;
  double bs = 0.0;
  double ta = 0.0;
  double da = 0.0;
  double hra = 0.0;
  double lic = 0.0;
  double pf = 0.0;
  double deduction = 0.0;
  double netsalary = 0.0;
  // ignore: non_constant_identifier_names
  List Department = ['CSE', 'CE', 'ECE', 'EEE', 'MECH', 'IT'];
  List<String> list = <String>['One', 'Two', 'Three', 'Four'];
  String dropdownValue = "One";
  TextEditingController fnController = TextEditingController();
  TextEditingController lnController = TextEditingController();
  TextEditingController genController = TextEditingController();
  TextEditingController marController = TextEditingController();
  TextEditingController deptController = TextEditingController();
  TextEditingController bsController = TextEditingController();
  TextEditingController basicsalContrller = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController taController = TextEditingController();
  TextEditingController daController = TextEditingController();
  TextEditingController hraController = TextEditingController();
  TextEditingController licController = TextEditingController();
  TextEditingController pfController = TextEditingController();
  TextEditingController deductionController = TextEditingController();
  TextEditingController netsalController = TextEditingController();

  void calculateNetSalary() {
    // ignore: unrelated_type_equality_checks
    
  name='${fnController.text} ${lnController.text} -Pay Slip' ;
  
  
 
  
  bs = double.parse(bsController.text);
     Navigator.push(context, MaterialPageRoute(builder: (context) => Payroll(name: name, gender: gender, marital: marital, department: department, basicsal: bs)),);
    // if (bsController.text != '') {
    //   bs = double.parse(bsController.text);
    //   if (bs < 5000) {
    //     ta = bs * 30 / 100;
    //     da = bs * 25 / 100;
    //     hra = bs * 20 / 100;
    //     lic = bs * 15 / 100;
    //     pf = bs * 10 / 100;
    //     deduction = lic + pf;
    //     netsalary = bs + ta + da + hra - deduction;
    //   } else if ((bs >= 5000) || (bs < 1000)) {
    //     ta = bs * 35 / 100;
    //     da = bs * 30 / 100;
    //     hra = bs * 25 / 100;
    //     lic = bs * 20 / 100;
    //     pf = bs * 15 / 100;
    //     deduction = lic + pf;
    //     netsalary = bs + ta + da + hra - deduction;
    //   } else {
    //     ta = bs * 40 / 100;
    //     da = bs * 35 / 100;
    //     hra = bs * 30 / 100;
    //     lic = bs * 25 / 100;
    //     pf = bs * 20 / 100;
    //     deduction = lic + pf;
    //     netsalary = bs + ta + da + hra - deduction;
    //     netsalary.toStringAsFixed(2);
    //   }
    //   if (bsController.text != '') {
    //     setState(() {
    //       nameController.text =
    //           "${fnController.text} " + "${lnController.text}-" + "Pay Slip";
    //       genController.text = "Gender: " + "$gender";
    //       marController.text = "Marital Status: " + "$marital";
    //       deptController.text = "Department: " + "$department";
    //       basicsalContrller.text = "Basic Salary: " + "\u{20B9}" + "$bs";
    //       taController.text = "TA: " + "\u{20B9}" + "$ta";
    //       daController.text = "DA: " + "\u{20B9}" + "$da";
    //       hraController.text = "HRA: " + "\u{20B9}" + "$hra";
    //       licController.text = "LIC: " + "\u{20B9}" + "$lic";
    //       pfController.text = "PF: " + "\u{20B9}" + "$pf";
    //       deductionController.text = "Deduction: " + "\u{20B9}" + "$deduction";
    //       netsalController.text = "Net Salary: " + "\u{20B9}" + "$netsalary";
    //     });
    //   }
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 243, 239, 239),
        appBar: AppBar(
          title: const Text(
            'Payroll Processing',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          backgroundColor: Colors.blue,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.perm_device_information_sharp),
              color: Colors.white,
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('2024 \u00a9 Basil')));
              },
            ),
          ],
        ),
        body: Form(
          key: _formKey,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Expanded(
                        child: Text(
                      'First Name',
                      style: TextStyle(fontSize: 20),
                    )),
                    Expanded(
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your first name';
                          }
                          return null;
                        },
                        controller: fnController,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 17, 17, 17),
                            fontSize: 15),
                        textAlign: TextAlign.left,
                        //enabled: true,
                        //controller: num1Controller,

                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '',
                            hintText: ''),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Expanded(
                        child: Text(
                      'Last Name',
                      style: TextStyle(fontSize: 20),
                    )),
                    Expanded(
                      child: TextFormField(
                        controller: lnController,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 17, 17, 17),
                            fontSize: 15),
                        textAlign: TextAlign.left,
                        enabled: true,
                        //controller: num1Controller,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your last name';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '',
                            hintText: ''),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Expanded(
                      child: Text(
                        'Gender',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          ListTile(
                            title: const Text('Male'),
                            leading: Radio<String>(
                              value: 'Male',
                              groupValue: gender,
                              onChanged: (value) {
                                setState(() {
                                  gender = value!;
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text('Female'),
                            leading: Radio<String>(
                              value: 'Female',
                              groupValue: gender,
                              onChanged: (value) {
                                setState(() {
                                  gender = value!;
                                });
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Expanded(
                      child: Text(
                        'Marital Status',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          ListTile(
                            title: const Text('Married'),
                            leading: Radio<String>(
                              value: 'Married',
                              groupValue: marital,
                              onChanged: (value) {
                                setState(() {
                                  marital = value!;
                                });
                              },
                            ),
                          ),
                          ListTile(
                            title: const Text('Single'),
                            leading: Radio<String>(
                              value: 'Single',
                              groupValue: marital,
                              onChanged: (value) {
                                setState(() {
                                  marital = value!;
                                });
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Expanded(
                      child: Text(
                        'Department',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Expanded(
                        child: DropdownButtonFormField<String>(
                      items: ["CS", "EC", "EE", "IT", "CE", "ME"]
                          .map((label) => DropdownMenuItem(
                                value: label,
                                child: Text(label),
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          department = value!;
                        });
                      },
                    ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Expanded(
                        child: Text(
                      'Basic Salary',
                      style: TextStyle(fontSize: 20),
                    )),
                    Expanded(
                      child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the Basic Salary';
                          } 
                          // else {
                          //   var basicsalv = double.tryParse(value.toString());
                          //   if (basicsalv == null) {
                          //     return 'Please enter Numeric Value';
                          //   }
                          // }
                          return null;
                        },
                        controller: bsController,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 17, 17, 17),
                            fontSize: 15),
                        textAlign: TextAlign.left,
                        //enabled: true,
                        //controller: num1Controller,

                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: '',
                            hintText: ''),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          // ignore: deprecated_member_use
                          primary: Colors.blue,
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            print('Working');
                            calculateNetSalary();
                           
                          }
                        },
                        child: const Text(
                          'Submit',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    )),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          // ignore: deprecated_member_use
                          primary: Colors.blue,
                        ),
                        child: const Text(
                          'Cancel',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () {},
                      ),
                    ))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
