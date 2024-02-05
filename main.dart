import 'package:flutter/material.dart';

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
  late String name="";
  late String gender = "";
  late String marital = "";
  late String department = "";
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
  TextEditingController fnController = TextEditingController();
  TextEditingController lnController = TextEditingController();
  TextEditingController genController = TextEditingController();
  TextEditingController marController = TextEditingController();
  TextEditingController deptController = TextEditingController();
  TextEditingController bsController = TextEditingController();
  TextEditingController basicsalContrller=TextEditingController();
  TextEditingController nameController= TextEditingController();
  TextEditingController taController=TextEditingController();
  TextEditingController daController=TextEditingController();
  TextEditingController hraController=TextEditingController();
  TextEditingController licController=TextEditingController();
  TextEditingController pfController=TextEditingController();
  TextEditingController deductionController=TextEditingController();
  TextEditingController netsalController=TextEditingController();
  

  void calculateNetSalary() {
    // ignore: unrelated_type_equality_checks
  
    if (bsController.text != '') {
        
      bs = double.parse(bsController.text);
      if (bs < 5000) {
        ta = bs * 30 / 100;
        da = bs * 25 / 100;
        hra = bs * 20 / 100;
        lic = bs * 15 / 100;
        pf = bs * 10 / 100;
        deduction = lic + pf;
        netsalary = bs + ta + da + hra - deduction;
      } else if ((bs >= 5000) || (bs < 1000)) {
        ta = bs * 35 / 100;
        da = bs * 30 / 100;
        hra = bs * 25 / 100;
        lic = bs * 20 / 100;
        pf = bs * 15 / 100;
        deduction = lic + pf;
        netsalary = bs + ta + da + hra - deduction;
      } else {
        ta = bs * 40 / 100;
        da = bs * 35 / 100;
        hra = bs * 30 / 100;
        lic = bs * 25 / 100;
        pf = bs * 20 / 100;
        deduction = lic + pf;
        netsalary = bs + ta + da + hra - deduction;
        netsalary.toStringAsFixed(2);
      }
      if (bsController.text != '') {
      setState(() {
           nameController.text="${fnController.text} "+"${lnController.text}-"+ "Pay Slip";
      genController.text="Gender: "+"$gender";
      marController.text="Marital Status: "+"$marital";
      deptController.text="Department: "+"$department";
      basicsalContrller.text="Basic Salary: "+"\u{20B9}"+"$bs";
      taController.text="TA: "+"\u{20B9}"+"$ta";
      daController.text="DA: "+"\u{20B9}"+"$da";
      hraController.text="HRA: "+"\u{20B9}"+"$hra";
      licController.text="LIC: "+"\u{20B9}"+"$lic";
      pfController.text="PF: "+"\u{20B9}"+"$pf";
      deductionController.text="Deduction: "+"\u{20B9}"+"$deduction";
      netsalController.text="Net Salary: "+"\u{20B9}"+"$netsalary";
        });
      }
     
  
      
     
      

      
    }
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
                        child: DropdownButton<String>(
                      items: <String>['CSE', 'ECE', 'CE', 'MECH', 'IT']
                          .map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
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
                          calculateNetSalary();
                          Navigator.push(context, MaterialPageRoute<void>(
                            builder: (BuildContext context) {
                              return Scaffold(
                                appBar: AppBar(
                                  title: Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                                    child: TextFormField(
                                                  controller: nameController,
                                                  style: const TextStyle(
                                                      color: Color.fromARGB(255, 250, 250, 250),
                                                      fontSize: 25,
                                                      fontWeight: FontWeight.bold),
                                                  textAlign: TextAlign.left,
                                                  enabled: false,
                                                  decoration: const InputDecoration(
                                                      
                                                      labelText: '',
                                                      hintText: ''),
                                                ),
                                  ), 
                                  backgroundColor: Colors.blue,
                                ),
                                body: ListView(
                                  children: [
                                    
                                    Container(
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[100]),
                                      child:  ListTile(
                                        leading:
                                            const Padding(
                                              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                              child: Icon(Icons.double_arrow_outlined),
                                            ),
                                        title:Padding(
                                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                          child: TextFormField(
                                                controller: genController,
                                                style: const TextStyle(
                                                    color: Color.fromARGB(255, 6, 3, 10),
                                                    fontSize: 20),
                                                textAlign: TextAlign.left,
                                                enabled: false,
                                                decoration: const InputDecoration(
                                                    border: InputBorder.none,
                                                    contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                                    labelText: '',
                                                    hintText: ''),
                                              ),
                                        ),

                                      ),
                                    ),
                                    Container(
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[200]),
                                      child:  ListTile(
                                        leading:
                                            const Padding(
                                              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                              child: Icon(Icons.double_arrow_outlined),
                                            ),
                                        title:Padding(
                                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                          child: TextFormField(
                                                controller: marController,
                                                style: const TextStyle(
                                                    color: Color.fromARGB(255, 6, 3, 10),
                                                    fontSize: 20),
                                                textAlign: TextAlign.left,
                                                enabled: false,
                                                decoration: const InputDecoration(
                                                    border: InputBorder.none,
                                                    contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                                    labelText: '',
                                                    hintText: ''),
                                              ),
                                        ),

                                      ),
                                    ),
                                    Container(
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[100]),
                                      child:  ListTile(
                                        leading:
                                            const Padding(
                                              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                              child: Icon(Icons.double_arrow_outlined),
                                            ),
                                        title:Padding(
                                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                          child: TextFormField(
                                                controller: deptController,
                                                style: const TextStyle(
                                                    color: Color.fromARGB(255, 6, 3, 10),
                                                    fontSize: 20),
                                                textAlign: TextAlign.left,
                                                enabled: false,
                                                decoration: const InputDecoration(
                                                    border: InputBorder.none,
                                                    contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                                    labelText: '',
                                                    hintText: ''),
                                              ),
                                        ),

                                      ),
                                    ),
                                    Container(
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[200]),
                                      child:  ListTile(
                                        leading:
                                            const Padding(
                                              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                              child: Icon(Icons.double_arrow_outlined),
                                            ),
                                        title:Padding(
                                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                          child: TextFormField(
                                                controller: basicsalContrller,
                                                style: const TextStyle(
                                                    color: Color.fromARGB(255, 6, 3, 10),
                                                    fontSize: 20),
                                                textAlign: TextAlign.left,
                                                enabled: false,
                                                decoration: const InputDecoration(
                                                    border: InputBorder.none,
                                                    contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                                    labelText: '',
                                                    hintText: ''),
                                              ),
                                        ),

                                      ),
                                    ),
                                    Container(
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[100]),
                                      child:  ListTile(
                                        leading:
                                            const Padding(
                                              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                              child: Icon(Icons.double_arrow_outlined),
                                            ),
                                        title:Padding(
                                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                          child: TextFormField(
                                                controller: taController,
                                                style: const TextStyle(
                                                    color: Color.fromARGB(255, 6, 3, 10),
                                                    fontSize: 20),
                                                textAlign: TextAlign.left,
                                                enabled: false,
                                                decoration: const InputDecoration(
                                                    border: InputBorder.none,
                                                    contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                                    labelText: '',
                                                    hintText: ''),
                                              ),
                                        ),

                                      ),
                                    ),
                                    Container(
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[200]),
                                      child:  ListTile(
                                        leading:
                                            const Padding(
                                              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                              child: Icon(Icons.double_arrow_outlined),
                                            ),
                                        title:Padding(
                                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                          child: TextFormField(
                                                controller: daController,
                                                style: const TextStyle(
                                                    color: Color.fromARGB(255, 6, 3, 10),
                                                    fontSize: 20),
                                                textAlign: TextAlign.left,
                                                enabled: false,
                                                decoration: const InputDecoration(
                                                    border: InputBorder.none,
                                                    contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                                    labelText: '',
                                                    hintText: ''),
                                              ),
                                        ),

                                      ),
                                    ),
                                    Container(
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[100]),
                                      child:  ListTile(
                                        leading:
                                            const Padding(
                                              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                              child: Icon(Icons.double_arrow_outlined),
                                            ),
                                        title:Padding(
                                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                          child: TextFormField(
                                                controller: hraController,
                                                style: const TextStyle(
                                                    color: Color.fromARGB(255, 6, 3, 10),
                                                    fontSize: 20),
                                                textAlign: TextAlign.left,
                                                enabled: false,
                                                decoration: const InputDecoration(
                                                    border: InputBorder.none,
                                                    contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                                    labelText: '',
                                                    hintText: ''),
                                              ),
                                        ),

                                      ),
                                    ),
                                    Container(
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[200]),
                                      child:  ListTile(
                                        leading:
                                            const Padding(
                                              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                              child: Icon(Icons.double_arrow_outlined),
                                            ),
                                        title:Padding(
                                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                          child: TextFormField(
                                                controller: licController,
                                                style: const TextStyle(
                                                    color: Color.fromARGB(255, 6, 3, 10),
                                                    fontSize: 20),
                                                textAlign: TextAlign.left,
                                                enabled: false,
                                                decoration: const InputDecoration(
                                                    border: InputBorder.none,
                                                    contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                                    labelText: '',
                                                    hintText: ''),
                                              ),
                                        ),

                                      ),
                                    ),
                                    Container(
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[100]),
                                      child:  ListTile(
                                        leading:
                                            const Padding(
                                              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                              child: Icon(Icons.double_arrow_outlined),
                                            ),
                                        title:Padding(
                                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                          child: TextFormField(
                                                controller: pfController,
                                                style: const TextStyle(
                                                    color: Color.fromARGB(255, 6, 3, 10),
                                                    fontSize: 20),
                                                textAlign: TextAlign.left,
                                                enabled: false,
                                                decoration: const InputDecoration(
                                                    border: InputBorder.none,
                                                    contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                                    labelText: '',
                                                    hintText: ''),
                                              ),
                                        ),

                                      ),
                                    ),
                                    Container(
                                      height: 60,
                                      decoration: BoxDecoration(
                                          color: Colors.grey[200]),
                                      child:  ListTile(
                                        leading:
                                            const Padding(
                                              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                              child: Icon(Icons.double_arrow_outlined),
                                            ),
                                        title:Padding(
                                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                          child: TextFormField(
                                                controller: deductionController,
                                                style: const TextStyle(
                                                    color: Color.fromARGB(255, 6, 3, 10),
                                                    fontSize: 20),
                                                textAlign: TextAlign.left,
                                                enabled: false,
                                                decoration: const InputDecoration(
                                                    border: InputBorder.none,
                                                    contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                                    labelText: '',
                                                    hintText: ''),
                                              ),
                                        ),

                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      child: Container(
                                        height: 60,
                                        decoration: BoxDecoration(
                                           border:Border.all(color: Colors.black), 
                                            color: Colors.amber[100]),
                                        child:  ListTile(
                                          title: Padding(
                                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                                          child: Center(
                                            child: TextFormField(
                                                  controller: netsalController,
                                                  style: const TextStyle(
                                                      color: Color.fromARGB(
                                                        255, 81, 11, 194),
                                                      fontSize: 30),
                                                  textAlign: TextAlign.left,
                                                  enabled: false,
                                                  decoration: const InputDecoration(
                                                      border: InputBorder.none,
                                                      contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                                      labelText: '',
                                                      hintText: ''),
                                                ),
                                          ),
                                        ),

                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ));
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
                        onPressed: () {
                          
                        },
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
