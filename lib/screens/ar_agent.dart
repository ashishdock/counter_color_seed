import 'package:counter_color_seed/Widgets/app_bar.dart';
import 'package:flutter/material.dart';

// class ArAgent extends StatelessWidget {
//   const ArAgent({super.key});
//   static const routeName = '/ar-agent';


//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }




class ArAgent extends StatefulWidget {
     ArAgent({super.key});
  static const routeName = '/ar-agent';

  @override
  State<ArAgent> createState() => _ArAgentState();
}

class _ArAgentState extends State<ArAgent> {
  final List<String> headings = [
    'Patient Name',
    'Chart #',
    'Insurance',
    'DOS',
    'Balance',
    'Notes',
    'Category'
  ];

  final List<String> categoryOptions = [
    'Auth',
    'Modifier',
    'ICD',
    'CPT',
    'Other coding',
    'MSP',
    'HMO',
    'Other reason'
  ];

  // Store the selected category value for each row
  List<String?> selectedCategories = List.filled(3, null);

 // Function to update selected category for a row
  void _updateCategory(int index, String? value) {
    setState(() {
      selectedCategories[index] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(icon: const Icon(Icons.arrow_back), onPressed: (){Navigator.pushReplacementNamed(context, "/");}),
      //   title: const Text('Bubble Spreadsheet'),
      // ),
      appBar: const AppBarCommon(),
      body: ListView.builder(
        itemCount: 3, // Initial number of rows
        itemBuilder: (context, index) {
          return index == 0
              ? _buildHeadingRow() // Heading row
              : _buildDataRow(index); // Data rows with bubble-style design
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add new row when the plus button is pressed
          // You can implement the logic to add a new row here
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildHeadingRow() {
    return Container(
      // color: Colors.grey[300], // Color suitable for heading
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: headings
            .map((heading) => Expanded(
                  child: Text(
                    heading,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      // color: Colors.blue, // Heading text color
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }

  Widget _buildDataRow(int index) {
    return Container(
      // color: index % 2 == 0 ? Colors.grey[100] : Colors.white, // Alternate row colors
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: headings
            .map(
              (heading) => Expanded(
                child: heading == 'Category'
                    ? DropdownButtonFormField<String>(
                        value: selectedCategories[index], // Set the initial value
                        items: categoryOptions.map((String option) {
                          return DropdownMenuItem<String>(
                            value: option,
                            child: Text(option),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            // Update the selected category value for this row
                            selectedCategories[index] = value;
                          });
                        },
                      )
                    : TextFormField(
  style: const TextStyle(fontSize: 9, ), // Set text color
  decoration: InputDecoration(
    filled: true,
    hintText: 'Type here', // Placeholder text
    hintStyle: const TextStyle(fontSize: 9, color: Colors.grey), // Set hint text color
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide.none,
    ),
  ),
),

              ),
            )
            .toList(),
      ),
    );
  }
}
