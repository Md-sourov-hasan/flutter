import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children:  [
          TextField(
             controller: _titleController,
            maxLength: 50,
            decoration: InputDecoration(
              label: Text('Title')
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                            controller: _amountController,
                            keyboardType: TextInputType.number,
                
                            decoration: InputDecoration(
                prefixText: '\$',
                label: Text('amount')
                            ),
                          ),
              ),
          SizedBox(width: 16,),
          Expanded(
            child: Row(
              children: [
                Text('Selected Date'),
                IconButton(onPressed: (){},
                 icon: Icon(Icons.calendar_month,
                 ),
                 )
              ],
            ),
          ),
            ],
          ),

          Row(
            children: [
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('cancel')),
              ElevatedButton(onPressed: (){
                print(_titleController.text);
                print(_amountController);
              },
               child:Text('save expense'
               ),
                ),
            ],
          )
        ],
      ),
    );
  }
}