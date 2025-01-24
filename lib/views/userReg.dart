import 'package:etra/widgets/nav_bar.dart';
import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController userIdController = TextEditingController();
    final TextEditingController fullNameController = TextEditingController();
    final TextEditingController emiratesIdController = TextEditingController();
    final TextEditingController expirationDateController =
        TextEditingController();
    final TextEditingController companyNameController = TextEditingController();
    final TextEditingController storeNameController = TextEditingController();
    final TextEditingController pickLocationController =
        TextEditingController();
    final TextEditingController remarksController = TextEditingController();

    return Scaffold(
     
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomNavbar(),
            // Row 1
            Container(
              height: MediaQuery.sizeOf(context).height/1.2,
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Registe User",style: TextStyle(fontSize: 30),),
                  Row(
                    children: [
                      Expanded(
                        child: _buildTextField(
                            controller: userIdController, label: "User ID"),
                      ),
                      const SizedBox(width: 100.0),
                      Expanded(
                        child: _buildTextField(
                            controller: fullNameController, label: "Full Name"),
                      ),
                    ],
                  ),
                   const SizedBox(height: 16.0),
              // Row 2
              Row(
                children: [
                  Expanded(
                    child: _buildTextField(
                        controller: emiratesIdController, label: "Emirates ID No."),
                  ),
                  const SizedBox(width: 100.0),
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      items: const [
                        DropdownMenuItem(
                          value: "EID Card",
                          child: Text("EID Card"),
                        ),
                        DropdownMenuItem(
                          value: "Other Card",
                          child: Text("Other Card"),
                        ),
                      ],
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        labelText: "Card Type",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              // Row 3
              Row(
                children: [
                  Expanded(
                    child: _buildTextField(
                      controller: expirationDateController,
                      label: "Expiration Date",
                      isDateField: true,
                    ),
                  ),
                  const SizedBox(width: 100.0),
                  Expanded(
                    child: _buildTextField(
                        controller: remarksController, label: "Remarks"),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              // Row 4
              Row(
                children: [
                  Expanded(
                    child: _buildTextField(
                        controller: companyNameController, label: "Company Name"),
                  ),
                  const SizedBox(width: 100.0),
                  Expanded(
                    child: _buildTextField(
                        controller: storeNameController, label: "Store Name"),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              // Row 5
              _buildTextField(
                  controller: pickLocationController, label: "Pick Location"),
              const SizedBox(height: 16.0),
              // Checkbox row
              Row(
                children: [
                  Expanded(
                    child: CheckboxListTile(
                      value: false,
                      onChanged: (value) {},
                      title: const Text("Block Card"),
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                  ),
                  Expanded(
                    child: CheckboxListTile(
                      value: false,
                      onChanged: (value) {},
                      title: const Text("Online Company"),
                      controlAffinity: ListTileControlAffinity.leading,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24.0),
              // Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.save),
                    label: const Text("Register"),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 12.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.clear),
                    label: const Text("Clear"),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 12.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                ],
              ),
                ],
              ),
            ),
           
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(
      {required TextEditingController controller,
      required String label,
      bool isDateField = false}) {
    return TextField(
      controller: controller,
      readOnly: isDateField,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        suffixIcon: isDateField
            ? const Icon(Icons.calendar_today, size: 20)
            : null,
      ),
      onTap: isDateField
          ? () async {
              // Date Picker for Date Field
              DateTime? date = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
              );
              if (date != null) {
                controller.text = "${date.day}-${date.month}-${date.year}";
              }
            }
          : null,
    );
  }
}
