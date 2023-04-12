import 'package:dividend_app/presentation/screens/common/label_TF.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddDividendCompany extends StatelessWidget {
  static const routeName = "signUp";
  final _companyNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailNoController = TextEditingController();
  final phoneController = TextEditingController();

  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text("Add Company"),
              Form(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  labelTF(
                      label: "Company Name",
                      controller: _companyNameController
                  ),

                  labelTF(
                      label: "Share Price",
                      controller: _companyNameController
                  ),

                  Text("Dividend Month"),


                  labelTF(
                      label: "Dividend %",
                      controller: _companyNameController
                  ),

                  Text("Last Year Dividend amount"),
                  TextFormField(
                    textCapitalization: TextCapitalization.words,
                    inputFormatters: [
                      FilteringTextInputFormatter.deny(RegExp(r'\s')),
                    ],
                    controller: _companyNameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your first name';
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xFFf0f4f7),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        contentPadding: const EdgeInsets.all(10)),
                  ),
                  Text("Company Sector"),
                  TextFormField(
                    textCapitalization: TextCapitalization.words,
                    inputFormatters: [
                      FilteringTextInputFormatter.deny(RegExp(r'\s')),
                    ],
                    controller: _companyNameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your first name';
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xFFf0f4f7),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        contentPadding: const EdgeInsets.all(10)),
                  ),
                  Text("Company Category"),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
