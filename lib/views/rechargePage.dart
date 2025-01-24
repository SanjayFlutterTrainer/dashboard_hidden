import 'package:etra/widgets/nav_bar.dart';
import 'package:flutter/material.dart';

class RechargePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Light background
    
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomNavbar(),
              Text(
                'Recharge',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 20),
              Card(
                color: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      _buildRowFields(
                        context,
                        'User ID',
                        'Name',
                        'Enter User ID',
                        'Enter Name',
                      ),
                      const SizedBox(height: 20),
                      _buildRowFields(
                        context,
                        'No. of Days Remaining',
                        'Emirates ID',
                        'Enter days remaining',
                        'Enter Emirates ID',
                      ),
                      const SizedBox(height: 20),
                      _buildRowFields(
                        context,
                        'Date (Recharge Date)',
                        'Payment Mode',
                        'dd-mm-yyyy',
                        'Select Payment Mode',
                        isDropdown: true,
                        dropdownItems: ['Online Payment', 'Cash'],
                      ),
                      const SizedBox(height: 20),
                      _buildRowFields(
                        context,
                        'Recharge Option',
                        'Remarks',
                        'Select Recharge Option',
                        'Enter Remarks',
                        isDropdown: true,
                        dropdownItems: [
                          '10 Days - AED 50',
                          '30 Days - AED 100',
                        ],
                      ),
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton.icon(
                              onPressed: () {
                                // Recharge logic
                              },
                              icon: Icon(Icons.refresh, color: Colors.white),
                              label: Text('Recharge'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black87,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 14),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: ElevatedButton.icon(
                              onPressed: () {
                                // Clear form logic
                              },
                              icon: Icon(Icons.clear, color: Colors.black87),
                              label: Text(
                                'Clear',
                                style: TextStyle(color: Colors.black87),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(color: Colors.black87),
                                ),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 14),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'Recent Recharges',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Table(
                    border: TableBorder.all(
                      color: Colors.grey[300]!,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    columnWidths: {
                      0: FlexColumnWidth(2),
                      1: FlexColumnWidth(2),
                      2: FlexColumnWidth(1.5),
                      3: FlexColumnWidth(1.5),
                      4: FlexColumnWidth(1.5),
                    },
                    children: [
                      TableRow(
                        decoration: BoxDecoration(color: Colors.grey[100]),
                        children: [
                          _buildTableHeader('User ID'),
                          _buildTableHeader('Date & Time'),
                          _buildTableHeader('Option'),
                          _buildTableHeader('Amount'),
                          _buildTableHeader('Remarks'),
                        ],
                      ),
                      ...List.generate(3, (index) {
                        return TableRow(
                          children: [
                            _buildTableCell('User123'),
                            _buildTableCell('20-01-2025'),
                            _buildTableCell('10 Days'),
                            _buildTableCell('AED 50'),
                            _buildTableCell('Online'),
                          ],
                        );
                      }),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRowFields(
    BuildContext context,
    String label1,
    String label2,
    String hint1,
    String hint2, {
    bool isDropdown = false,
    List<String>? dropdownItems,
  }) {
    return Row(
      children: [
        Expanded(
          child: _buildInputField(
            context,
            label1,
            hint1,
            isDropdown: isDropdown,
            dropdownItems: dropdownItems,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: _buildInputField(context, label2, hint2),
        ),
      ],
    );
  }

  Widget _buildInputField(
    BuildContext context,
    String label,
    String hint, {
    bool isDropdown = false,
    List<String>? dropdownItems,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 14, color: Colors.black87),
        ),
        const SizedBox(height: 8),
        isDropdown
            ? DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12, vertical: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey[300]!),
                  ),
                ),
                items: dropdownItems!
                    .map((item) => DropdownMenuItem(
                          value: item,
                          child: Text(item, style: TextStyle(fontSize: 14)),
                        ))
                    .toList(),
                onChanged: (value) {},
              )
            : TextField(
                decoration: InputDecoration(
                  hintText: hint,
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12, vertical: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey[300]!),
                  ),
                ),
              ),
      ],
    );
  }

  Widget _buildTableHeader(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildTableCell(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(color: Colors.black87),
        textAlign: TextAlign.center,
      ),
    );
  }
}

