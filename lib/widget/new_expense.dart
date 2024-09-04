import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  // var _enteredTitle = '';

  // void _saveTitleInput(String inputValue) {
  //   _enteredTitle = inputValue;
  // }

  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose(); // cleanup when the modal is closed
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              //onChanged: _saveTitleInput,
              controller: _titleController,
              maxLength: 50,
              decoration: const InputDecoration(
                label: Text('Expense title'),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    //onChanged: _saveTitleInput,
                    controller: _amountController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      prefixText: '\$ ',
                      label: Text('Expense amount'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16.0,
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text('Select Date'),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.calendar_month)),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      //print(_titleController.text);
                      //print(_amountController.text);
                    },
                    child: const Text('Save')),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel'),
                )
              ],
            )
          ],
        ));
  }
}
