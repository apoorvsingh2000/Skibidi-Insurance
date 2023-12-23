import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:locl/constants.dart';
import 'package:locl/screens/Suggestions.dart';

const List<String> list1 = [
  "--Select--",
  "Yes",
  "No",
];

const List<String> list2 = [
  "--Select--",
  "Yes",
  "No",
];
const List<String> list3 = [
  "--Select--",
  "Sometimes",
  "Always",
  "Never",
];
const List<String> list4 = [
  "--Select--",
  "1",
  "2",
  "3",
  "3+",
];
const List<String> list5 = [
  "--Select--",
  "Sometimes",
  "Frequently",
  "Always",
  "Never",
];
const List<String> list6 = [
  "--Select--",
  "Yes",
  "No",
];
const List<String> list7 = [
  "--Select--",
  "Less than 1L",
  "Between 1L and 2L",
  "More than 2L",
];
const List<String> list8 = [
  "--Select--",
  "Yes",
  "No",
];
const List<String> list9 = [
  "--Select--",
  "1 or 2 days",
  "2 or 4 days",
  "4 or 5 days",
  "I do not have",
];
const List<String> list10 = [
  "--Select--",
  "0-2 hours",
  "3-5 hours",
  "More than 5 hours",
];
const List<String> list11 = [
  "--Select--",
  "Always",
  "Frequently",
  "Sometimes",
  "Never",
];
const List<String> list12 = [
  "--Select--",
  "Public transportation",
  "Automobile",
  "Walking",
  "Motorbike",
  "Bike",
];

class FormPage extends StatefulWidget {
  static const String id = 'form_page';
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    String dropdownValue = list1.first;
    const double fieldGap = 30.0;

    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text(
          'Skibidi Insurance',
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
        ),
        backgroundColor: kDarkColor,
      ),
      backgroundColor: const Color.fromARGB(255, 226, 243, 241),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.25,
              vertical: MediaQuery.of(context).size.height * 0.03),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(width: 4.0, color: Colors.black54),
              borderRadius: BorderRadius.circular(20.0),
              color: kCardColor,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.02,
                  vertical: MediaQuery.of(context).size.height * 0.05),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Let's get started!",
                    style: TextStyle(
                        fontSize: 40.0,
                        color: kDarkColor,
                        fontFamily: GoogleFonts.playball().fontFamily,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Enter information about your lifestyle. \nWe’ll help you get the right policy to meet your needs",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: kDarkColor,
                        fontFamily: GoogleFonts.lato().fontFamily,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "We will maintain your privacy by hiding user-specific information in our records.",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: kDarkColor,
                        fontFamily: GoogleFonts.lato().fontFamily,
                        fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "Select your family's history with obesity",
                    style: TextStyle(
                        color: Color.fromARGB(255, 27, 95, 86),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownMenu<String>(
                    initialSelection: list1.first,
                    onSelected: (String? value) {
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                    dropdownMenuEntries:
                        list1.map<DropdownMenuEntry<String>>((String value) {
                      return DropdownMenuEntry<String>(
                          value: value, label: value);
                    }).toList(),
                  ),
                  const SizedBox(
                    height: fieldGap,
                  ),
                  const Text(
                    "Frequent consumption of high caloric food",
                    style: TextStyle(
                        color: Color.fromARGB(255, 27, 95, 86),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownMenu<String>(
                    initialSelection: list2.first,
                    onSelected: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                    dropdownMenuEntries:
                        list2.map<DropdownMenuEntry<String>>((String value) {
                      return DropdownMenuEntry<String>(
                          value: value, label: value);
                    }).toList(),
                  ),
                  const SizedBox(
                    height: fieldGap,
                  ),
                  const Text(
                    "Frequency of consumption of vegetables",
                    style: TextStyle(
                        color: Color.fromARGB(255, 27, 95, 86),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownMenu<String>(
                    initialSelection: list3.first,
                    onSelected: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                    dropdownMenuEntries:
                        list3.map<DropdownMenuEntry<String>>((String value) {
                      return DropdownMenuEntry<String>(
                          value: value, label: value);
                    }).toList(),
                  ),
                  const SizedBox(
                    height: fieldGap,
                  ),
                  const Text(
                    "Number of main meals",
                    style: TextStyle(
                        color: Color.fromARGB(255, 27, 95, 86),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownMenu<String>(
                    initialSelection: list4.first,
                    onSelected: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                    dropdownMenuEntries:
                        list4.map<DropdownMenuEntry<String>>((String value) {
                      return DropdownMenuEntry<String>(
                          value: value, label: value);
                    }).toList(),
                  ),
                  const SizedBox(
                    height: fieldGap,
                  ),
                  const Text(
                    "Consumption of food between meals",
                    style: TextStyle(
                        color: Color.fromARGB(255, 27, 95, 86),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownMenu<String>(
                    initialSelection: list5.first,
                    onSelected: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                    dropdownMenuEntries:
                        list5.map<DropdownMenuEntry<String>>((String value) {
                      return DropdownMenuEntry<String>(
                          value: value, label: value);
                    }).toList(),
                  ),
                  const SizedBox(
                    height: fieldGap,
                  ),
                  const Text(
                    "Do you smoke?",
                    style: TextStyle(
                        color: Color.fromARGB(255, 27, 95, 86),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownMenu<String>(
                    initialSelection: list6.first,
                    onSelected: (String? value) {
                      // This is called when the user selects an item.
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                    dropdownMenuEntries:
                        list6.map<DropdownMenuEntry<String>>((String value) {
                      return DropdownMenuEntry<String>(
                          value: value, label: value);
                    }).toList(),
                  ),
                  const SizedBox(
                    height: fieldGap,
                  ),
                  const Text(
                    "Daily consumption of water",
                    style: TextStyle(
                        color: Color.fromARGB(255, 27, 95, 86),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownMenu<String>(
                    initialSelection: list7.first,
                    onSelected: (String? value) {
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                    dropdownMenuEntries:
                        list7.map<DropdownMenuEntry<String>>((String value) {
                      return DropdownMenuEntry<String>(
                          value: value, label: value);
                    }).toList(),
                  ),
                  const SizedBox(
                    height: fieldGap,
                  ),
                  const Text(
                    "Do you monitor your calorie consumption?",
                    style: TextStyle(
                        color: Color.fromARGB(255, 27, 95, 86),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownMenu<String>(
                    initialSelection: list8.first,
                    onSelected: (String? value) {
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                    dropdownMenuEntries:
                        list8.map<DropdownMenuEntry<String>>((String value) {
                      return DropdownMenuEntry<String>(
                          value: value, label: value);
                    }).toList(),
                  ),
                  const SizedBox(
                    height: fieldGap,
                  ),
                  const Text(
                    "Frequency of physical activity",
                    style: TextStyle(
                        color: Color.fromARGB(255, 27, 95, 86),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownMenu<String>(
                    initialSelection: list9.first,
                    onSelected: (String? value) {
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                    dropdownMenuEntries:
                        list9.map<DropdownMenuEntry<String>>((String value) {
                      return DropdownMenuEntry<String>(
                          value: value, label: value);
                    }).toList(),
                  ),
                  const SizedBox(
                    height: fieldGap,
                  ),
                  const Text(
                    "Time spent on using technology devices",
                    style: TextStyle(
                        color: Color.fromARGB(255, 27, 95, 86),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownMenu<String>(
                    initialSelection: list10.first,
                    onSelected: (String? value) {
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                    dropdownMenuEntries:
                        list10.map<DropdownMenuEntry<String>>((String value) {
                      return DropdownMenuEntry<String>(
                          value: value, label: value);
                    }).toList(),
                  ),
                  const SizedBox(
                    height: fieldGap,
                  ),
                  const Text(
                    "Frequency of consumption of alcohol",
                    style: TextStyle(
                        color: Color.fromARGB(255, 27, 95, 86),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownMenu<String>(
                    initialSelection: list11.first,
                    onSelected: (String? value) {
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                    dropdownMenuEntries:
                        list11.map<DropdownMenuEntry<String>>((String value) {
                      return DropdownMenuEntry<String>(
                          value: value, label: value);
                    }).toList(),
                  ),
                  const SizedBox(
                    height: fieldGap,
                  ),
                  const Text(
                    "Type of transportation used",
                    style: TextStyle(
                        color: Color.fromARGB(255, 27, 95, 86),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  DropdownMenu<String>(
                    initialSelection: list12.first,
                    onSelected: (String? value) {
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                    dropdownMenuEntries:
                        list12.map<DropdownMenuEntry<String>>((String value) {
                      return DropdownMenuEntry<String>(
                          value: value, label: value);
                    }).toList(),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Material(
                    elevation: 5.0,
                    color: kDarkColor,
                    borderRadius: BorderRadius.circular(30.0),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.popAndPushNamed(context, Suggestions.id);
                      },
                      height: 42.0,
                      child: const Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Submit',
                            style: TextStyle(
                                color: Color.fromARGB(255, 201, 243, 237),
                                fontSize: 30.0,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
