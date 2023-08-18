import 'package:calculator/widgets/button.dart';
import 'package:calculator/widgets/colors.dart';
import 'package:calculator/widgets/textfield.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(

        title: const Text("Calculator", style: TextStyle(color: Colors.white), ),
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,

      ),

      body: Column(
        children: [
          const CustomTextField(),
          const Spacer(),
          Container(
            height: screenHeight * 0.6,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            decoration: const BoxDecoration(color: AppColors.boxColor),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button1(label:'v', textColor: AppColors.boxColor,), Button1(label:'c', textColor: AppColors.boxColor), Button1(label: 'x' , textColor: AppColors.boxColor), Button1(label: '/', textColor: AppColors.boxColor)
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button1(label:'(', textColor: AppColors.boxColor), Button1(label:')', textColor: AppColors.boxColor), Button1(label: '%', textColor: AppColors.boxColor), Button1(label: '*', textColor: AppColors.boxColor)
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button1(label:'1', textColor: AppColors.boxColor), Button1(label:'2', textColor: AppColors.boxColor), Button1(label: '3', textColor: AppColors.boxColor), Button1(label: '-', textColor: AppColors.boxColor)
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button1(label:'4', textColor: AppColors.boxColor), Button1(label:'5', textColor: AppColors.boxColor), Button1(label: '6', textColor: AppColors.boxColor), Button1(label: '+', textColor: AppColors.boxColor)
                  ],
                ),
                Row(
                  children: [
                    const Expanded(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Button1(label:'7', textColor: AppColors.boxColor), Button1(label:'8', textColor: AppColors.boxColor), Button1(label: '9', textColor: AppColors.boxColor)
                            ],
                          ),
                          SizedBox(height: 20,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Button1(label:'0', textColor: AppColors.boxColor), Button1(label:'00', textColor: AppColors.boxColor), Button1(label: '.', textColor: AppColors.boxColor)
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20,),
                    Container(
                      height: 160,
                      width: 70,
                      decoration: BoxDecoration(
                        color: AppColors.buttonColor
                      ),
                      child: Button1(label: '=',textColor: AppColors.buttonColor),
                    )
                  ],
                )

              ],
            ),
          ),

        ],

      ),
    );
  }

}
