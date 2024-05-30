import 'package:flutter/material.dart';

class DietChart extends StatelessWidget {
  DietChart({super.key});
  final List<List<String>> foodItems = [
    ['Pecans', '691', '72', '9', '14', '10'],
    ['Walnuts', '654', '65', '15', '14', '7'],
    ['Hazelnuts', '628', '61', '15', '17', '10'],
    ['Sunflower Seeds', '584', '51', '21', '20', '9'],
    ['Almonds', '575', '49', '21', '22', '12'],
    ['Sesame Seeds', '573', '50', '18', '23', '12'],
    ['Pumpkin Seeds', '541', '46', '25', '18', '4'],
    ['Soybeans', '446', '20', '30', '36', '9'],
    ['Quinoa', '368', '6', '14', '64', '7'],
    ['Beans, Pinto', '347', '1', '21', '63', '15'],
    ['Beans, Kidney', '337', '1', '23', '61', '15'],
    ['Beans, Navy', '337', '1', '22', '61', '24'],
    ['Cranberry Beans', '335', '1', '23', '60', '25'],
    ['Mushrooms, Shiitake', '296', '1', '10', '75', '11'],
    ['Avocado', '160', '15', '2', '9', '7'],
    ['Garlic', '149', '0', '6', '33', '2'],
    ['Yams', '118', '0', '2', '28', '4'],
    ['Bananas', '89', '0', '1', '23', '3'],
    ['Corn', '86', '1', '3', '19', '3'],
    ['Sweet Potato', '86', '0', '2', '20', '3'],
    ['Pomegranates', '83', '1', '2', '19', '4'],
    ['Peas', '81', '0', '5', '14', '5'],
    ['Potatoes, Russet', '79', '0', '2', '18', '1'],
    ['Parsnips', '75', '0', '1', '18', '5'],
    ['Figs', '74', '0', '1', '19', '3'],
    ['Shallots', '72', '0', '3', '17', '0'],
    ['Kumquats', '71', '1', '2', '16', '6'],
    ['Potatoes, Red', '70', '0', '2', '16', '2'],
    ['Guava', '68', '1', '3', '14', '5'],
    ['Grapes', '67', '0', '1', '17', '1'],
    ['Cherries', '63', '0', '1', '16', '2'],
    ['Leeks', '61', '0', '1', '14', '2'],
    ['Pears', '58', '0', '0', '15', '3'],
    ['Tangerines', '53', '0', '1', '13', '2'],
    ['Apples', '52', '0', '0', '14', '2'],
    ['Raspberries', '52', '1', '1', '12', '6'],
    ['Kale', '50', '1', '3', '10', '2'],
    ['Pineapples', '50', '0', '1', '13', '1'],
    ['Apricots', '48', '0', '1', '11', '2'],
    ['Artichokes', '47', '0', '3', '11', '5'],
    ['Oranges', '47', '0', '1', '12', '2'],
    ['Cranberries', '46', '0', '0', '12', '5'],
    ['Beets', '43', '0', '2', '10', '3'],
    ['Blackberries', '43', '0', '1', '10', '5'],
    ['Celeriac', '42', '0', '1', '9', '2'],
    ['Grapefruit', '42', '0', '1', '9', '2'],
    ['Sugar Snap Peas', '42', '61', '15', '17', '10'],
    ['Carrots', '41', '0', '1', '10', '3'],
    ['Acorn Squash', '40', '0', '1', '10', '1'],
    ['Onion', '40', '0', '1', '9', '2'],
    ['Papaya', '39', '0', '1', '10', '2'],
    ['Peaches', '39', '0', '1', '10', '1'],
    ['Mushrooms', '37', '0', '2', '7', '3'],
    ['Honeydew', '36', '0', '1', '9', '1'],
    ['Rutabagas', '36', '0', '1', '8', '3'],
    ['Brocoli', '34', '0', '3', '7', '3'],
    ['Cantaloupe', '34', '0', '1', '9', '1'],
    ['Serrano Pepper', '32', '0', '2', '8', '4'],
    ['Strawberries', '32', '0', '1', '8', '2'],
    ['Green Beans', '31', '0', '2', '7', '3'],
    ['Okra', '31', '0', '2', '7', '3'],
    ['Spaghetti Squash', '31', '1', '1', '7', '0'],
    ['Sweet Red Peppers', '31', '0', '1', '6', '2'],
    ['Collards', '30', '0', '2', '6', '4'],
    ['Limes', '30', '0', '1', '11', '3'],
    ['Watermelon', '30', '0', '1', '8', '0'],
    ['Lemons', '29', '0', '1', '9', '3'],
    ['Turnips', '28', '0', '1', '6', '2'],
    ['Banana Peppers', '27', '0', '2', '5', '3'],
    ['Sweet Yellow Peppers', '27', '0', '1', '6', '1'],
    ['Mustard Greens', '26', '0', '3', '5', '3'],
    ['Cabbage', '25', '0', '1', '6', '3'],
    ['Cauliflower', '25', '0', '2', '5', '3'],
    ['Eggplant', '24', '0', '1', '6', ''],
    ['Spinage', '23', '0', '3', '4', '2'],
    ['Rhubarb', '21', '0', '1', '5', '2'],
    ['Asparagus', '20', '0', '2', '4', '2'],
    ['Sweet Green Pepper', '20', '0', '1', '5', '2'],
    ['Swiss Chard', '19', '0', '2', '4', '2'],
    ['Tomatoes', '18', '0', '1', '4', '1'],
    ['Celery', '16', '0', '1', '3', '2'],
    ['Radish', '16', '0', '1', '3', '2'],
    ['Summer Squash', '16', '0', '1', '3', '1'],
    ['Cucumbers', '15', '0', '1', '4', '0'],
    ['Lettuce', '15', '0', '1', '3', '1'],
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Center(
            child: Text(
          'Diet Chart',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        )),
        SafeArea(
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: const [
                  DataColumn(
                    label: Text('100g of Food'),
                  ),
                  DataColumn(
                    label: Text('Calories'),
                  ),
                  DataColumn(
                    label: Text('Fat'),
                  ),
                  DataColumn(
                    label: Text('Carbs'),
                  ),
                  DataColumn(
                    label: Text('Protein'),
                  ),
                  DataColumn(
                    label: Text('Fiber'),
                  ),
                ],
                rows:
                    foodItems.map((foodItem) => dataElement(foodItem)).toList(),
              ),
            ),
          ),
        ),
      ],
    );
  }

  DataRow dataElement(List<String> foodItem) {
    return DataRow(
      cells: [
        DataCell(Text(foodItem[0])),
        DataCell(Text(foodItem[1])),
        DataCell(Text('${foodItem[2]}g')),
        DataCell(Text('${foodItem[3]}g')),
        DataCell(Text('${foodItem[4]}g')),
        DataCell(Text('${foodItem[5]}g')),
      ],
    );
  }
}
