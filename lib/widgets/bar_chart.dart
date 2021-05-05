import 'package:flutter/material.dart';

class BarChart extends StatelessWidget {
  final List<double> expenses;

  BarChart(this.expenses);

  @override
  Widget build(BuildContext context) {
    double mostExpensive = 0;
    expenses.forEach((double price) {
      if (price > mostExpensive) {
        mostExpensive = price;
      }
    });

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            '1週間の支出',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
          SizedBox(height: 3.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back),
                iconSize: 30.0,
                onPressed: () {},
              ),
              Text(
                '2020/11/10 – 2020/11/16',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2,
                ),
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward),
                iconSize: 30.0,
                onPressed: () {},
              )
            ],
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 20.0, 10.0, 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Bar(
                  label: '日',
                  amountSpent: expenses[0],
                  mostExpensive: mostExpensive,
                ),
                Bar(
                  label: '月',
                  amountSpent: expenses[1],
                  mostExpensive: mostExpensive,
                ),
                Bar(
                  label: '火',
                  amountSpent: expenses[2],
                  mostExpensive: mostExpensive,
                ),
                Bar(
                  label: '水',
                  amountSpent: expenses[3],
                  mostExpensive: mostExpensive,
                ),
                Bar(
                  label: '木',
                  amountSpent: expenses[4],
                  mostExpensive: mostExpensive,
                ),
                Bar(
                  label: '金',
                  amountSpent: expenses[5],
                  mostExpensive: mostExpensive,
                ),
                Bar(
                  label: '土',
                  amountSpent: expenses[6],
                  mostExpensive: mostExpensive,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Bar extends StatelessWidget {
  final String label;
  final double amountSpent;
  final double mostExpensive;

  final double _maxBarHeight = 150.0;

  Bar({this.label, this.amountSpent, this.mostExpensive});

  @override
  Widget build(BuildContext context) {
    final barHeight = amountSpent / mostExpensive * _maxBarHeight;
    return Column(
      children: [
        Text(
          '\$${amountSpent.toStringAsFixed(2)}',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 6.0,
        ),
        Container(
          height: barHeight,
          width: 18.0,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColorDark,
            borderRadius: BorderRadius.circular(6.0),
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
