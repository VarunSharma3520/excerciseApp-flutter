import 'package:flutter/material.dart';

class CalorieCalculator extends StatelessWidget {
  const CalorieCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: ListView(
          children: const [
            CalorieCalculatorForm(),
          ],
        ),
      ),
    );
  }
}

enum Gender { male, female }

class CalorieCalculatorForm extends StatefulWidget {
  const CalorieCalculatorForm({super.key});

  @override
  State<CalorieCalculatorForm> createState() => _CalorieCalculatorFormState();
}

class _CalorieCalculatorFormState extends State<CalorieCalculatorForm> {
  final TextEditingController ageController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  Gender? _gender = Gender.male;
  double? _bmr;

  @override
  void dispose() {
    ageController.dispose();
    weightController.dispose();
    heightController.dispose();
    super.dispose();
  }

  void resetBMR() {
    setState(() {
      _bmr = null;
      _gender = Gender.male;
      ageController.text = '';
      weightController.text = '';
      heightController.text = '';
    });
  }

  void calculateBMR() {
    if (_formKey.currentState?.validate() ?? false) {
      double weight = double.parse(weightController.text);
      double height = double.parse(heightController.text);
      int age = int.parse(ageController.text);

      double bmr;
      if (_gender == Gender.male) {
        bmr = 13.397 * weight + 4.799 * height - 5.677 * age + 88.362;
      } else {
        bmr = 9.247 * weight + 3.098 * height - 4.330 * age + 447.593;
      }

      setState(() {
        _bmr = bmr;
      });

      FocusScope.of(context).unfocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Calorie Calculator',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0),
              buildTextField(weightController, 'Weight',
                  'Please enter your weight in kgs'),
              const SizedBox(height: 8.0),
              buildTextField(
                  heightController, 'Height', 'Please enter your height in cm'),
              const SizedBox(height: 8.0),
              buildTextField(ageController, 'Age', 'Please enter your age'),
              const SizedBox(height: 16.0),
              buildRadioTile(Gender.male, 'Male'),
              buildRadioTile(Gender.female, 'Female'),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  Center(
                    child: ElevatedButton(
                      onPressed: resetBMR,
                      child: const Text('Reset'),
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: calculateBMR,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber, // Background color
                        foregroundColor: Colors.black, // Text color
                      ),
                      child: const Text('Submit'),
                    ),
                  ),
                ],
              ),
              if (_bmr != null)
                ...([
                  const SizedBox(height: 16.0),
                  Text(
                    'Your Basal Metabolic Rate (BMR) is ${_bmr!.toStringAsFixed(2)} calories/day\nBasal Metabolic Rate (BMR) is the number of calories your body needs to maintain basic physiological functions like breathing, circulation, and cell production while at rest.',
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                    ),
                  ),
                ])
              else
                ...([
                  const SizedBox(height: 16.0),
                  const Text(
                    'For weight loss consume less calories than your BMR\nFor weight gain consume more calories than your BMR\nFor weight maintenance consume the same calories as your BMR\nNOTE:You should only increase or decrease upto 10% of your BMR under normal cases\nfor more specific customization contact your dietician ',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                    ),
                  ),
                ]),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
      TextEditingController controller, String label, String hint) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: label,
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.grey),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your $label';
        }
        final number = double.tryParse(value);
        if (number == null || number <= 0) {
          return 'Please enter a valid $label';
        }
        return null;
      },
    );
  }

  Widget buildRadioTile(Gender value, String title) {
    return ListTile(
      title: Text(title),
      leading: Radio<Gender>(
        value: value,
        groupValue: _gender,
        onChanged: (Gender? newValue) {
          setState(() {
            _gender = newValue;
          });
        },
      ),
    );
  }
}
