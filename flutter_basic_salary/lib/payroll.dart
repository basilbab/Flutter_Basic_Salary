import 'package:flutter/material.dart';


     double da=0.0;
     double ta=0.0;
     double hra=0.0;
     double lic=0.0;
     double pf=0.0;
     double deduction=0.0;
     double netsalary=0.0;

class Payroll extends StatefulWidget {
  final String name;
  final String marital;
  final String gender;
  final String department;
  final double basicsal;

  const Payroll(
      {super.key,
      required this.name,
      required this.gender,
      required this.marital,
      required this.department,
      required this.basicsal});

  @override
  State<Payroll> createState() => _PayrollState();
}

class _PayrollState extends State<Payroll> {

  @override
  void initState()
  {
    super.initState();
    calculateNetSalary();
  }
  void calculateNetSalary()
  {
     double bs=widget.basicsal;
     if (widget.basicsal < 5000) {
        ta = bs * 30 / 100;
        da = bs * 25 / 100;
        hra = bs * 20 / 100;
        lic = bs * 15 / 100;
        pf = bs * 10 / 100;
        } else if ((bs >= 5000) || (bs < 1000)) {
        ta = bs * 35 / 100;
        da = bs * 30 / 100;
        hra = bs * 25 / 100;
        lic = bs * 20 / 100;
        pf = bs * 15 / 100;
        } 
        else {
        ta = bs * 40 / 100;
        da = bs * 35 / 100;
        hra = bs * 30 / 100;
        lic = bs * 25 / 100;
        pf = bs * 20 / 100;
        } 
        setState(() {
        deduction = lic + pf;
        netsalary = bs + ta + da + hra - deduction;
        netsalary.toStringAsFixed(2);
        }); 
        
      
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 7),
          child: Text(
            widget.name,
            style: const TextStyle(
                color: Color.fromARGB(255, 250, 250, 250),
                fontSize: 25,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          Container(
            height: 60,
            decoration: BoxDecoration(color: Colors.grey[100]),
            child: ListTile(
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Icon(Icons.double_arrow_outlined),
              ),
              title: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                child: RichText(
                    text: TextSpan(children: [
                  const TextSpan(
                      text: 'Gender :',
                      style: TextStyle(color: Colors.black, fontSize: 23)),
                  TextSpan(
                      text: widget.gender,
                      style:
                          const TextStyle(color: Colors.black, fontSize: 23)),
                ])),
              ),
            ),
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(color: Colors.grey[200]),
            child: ListTile(
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Icon(Icons.double_arrow_outlined),
              ),
              title: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                child: RichText(
                    text: TextSpan(children: [
                  const TextSpan(
                      text: 'Marital Status :',
                      style: TextStyle(color: Colors.black, fontSize: 23)),
                  TextSpan(
                      text: widget.marital,
                      style:
                          const TextStyle(color: Colors.black, fontSize: 23)),
                ])),
              ),
            ),
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(color: Colors.grey[100]),
            child: ListTile(
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Icon(Icons.double_arrow_outlined),
              ),
              title: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                child: RichText(
                    text: TextSpan(children: [
                  const TextSpan(
                      text: 'Department :',
                      style: TextStyle(color: Colors.black, fontSize: 23)),
                  TextSpan(
                      text: widget.department,
                      style:
                          const TextStyle(color: Colors.black, fontSize: 23)),
                ])),
              ),
            ),
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(color: Colors.grey[200]),
            child: ListTile(
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Icon(Icons.double_arrow_outlined),
              ),
              title: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                child: RichText(
                    text: TextSpan(children: [
                  const TextSpan(
                      text: 'Basic Salary :',
                      style: TextStyle(color: Colors.black, fontSize: 23)),
                  TextSpan(
                      text: widget.basicsal.toString(),
                      style:
                          const TextStyle(color: Colors.black, fontSize: 23)),
                ])),
              ),
            ),
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(color: Colors.grey[100]),
            child: ListTile(
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Icon(Icons.double_arrow_outlined),
              ),
              title: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                child: RichText(
                    text: TextSpan(children: [
                  const TextSpan(
                      text: 'TA :',
                      style: TextStyle(color: Colors.black, fontSize: 23)),
                  TextSpan(
                      text: ta.toString(),
                      style: const TextStyle(color: Colors.black, fontSize: 23)),
                ])),
              ),
            ),
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(color: Colors.grey[200]),
            child: ListTile(
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Icon(Icons.double_arrow_outlined),
              ),
              title: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                child: RichText(
                    text:  TextSpan(children: [
                  const TextSpan(
                      text: 'DA :',
                      style: TextStyle(color: Colors.black, fontSize: 23)),
                  TextSpan(
                      text: da.toString(),
                      style: const TextStyle(color: Colors.black, fontSize: 23)),
                ])),
              ),
            ),
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(color: Colors.grey[100]),
            child: ListTile(
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Icon(Icons.double_arrow_outlined),
              ),
              title: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                child: RichText(
                    text:  TextSpan(children: [
                  const TextSpan(
                      text: 'HRA :',
                      style: TextStyle(color: Colors.black, fontSize: 23)),
                  TextSpan(
                      text: hra.toString(),
                      style: const TextStyle(color: Colors.black, fontSize: 23)),
                ])),
              ),
            ),
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(color: Colors.grey[200]),
            child: ListTile(
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Icon(Icons.double_arrow_outlined),
              ),
              title: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                child: RichText(
                    text: TextSpan(children: [
                  const TextSpan(
                      text: 'LIC :',
                      style: TextStyle(color: Colors.black, fontSize: 23)),
                  TextSpan(
                      text: hra.toString(),
                      style: const TextStyle(color: Colors.black, fontSize: 23)),
                ])),
              ),
            ),
          ),
          //#################
          Container(
            height: 60,
            decoration: BoxDecoration(color: Colors.grey[100]),
            child: ListTile(
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Icon(Icons.double_arrow_outlined),
              ),
              title: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                child: RichText(
                    text: TextSpan(children: [
                  const TextSpan(
                      text: 'PF :',
                      style: TextStyle(color: Colors.black, fontSize: 23)),
                  TextSpan(
                      text: pf.toString(),
                      style: const TextStyle(color: Colors.black, fontSize: 23)),
                ])),
              ),
            ),
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(color: Colors.grey[200]),
            child: ListTile(
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Icon(Icons.double_arrow_outlined),
              ),
              title: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                child: RichText(
                    text: TextSpan(children: [
                  const TextSpan(
                      text: 'Total Deduction :',
                      style: TextStyle(color: Colors.black, fontSize: 23)),
                  TextSpan(
                      text: deduction.toString(),
                      style: const TextStyle(color: Colors.black, fontSize: 23)),
                ])),
              ),
            ),
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(color: Colors.amber[100]),
            child: ListTile(
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Icon(Icons.double_arrow_outlined),
              ),
              title: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                child: RichText(
                    text:  TextSpan(children: [
                  const TextSpan(
                      text: 'Net Salary :',
                      style: TextStyle(color: Colors.black, fontSize: 23)),
                  TextSpan(
                      text: netsalary.toString(),
                      style: const TextStyle(color: Colors.black, fontSize: 23)),
                ])),
              ),
            ),
          )
        ],
      ),
    );
  }
}
