import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double bmi = 0;
  int result = 0;
  int height = 150;
  int weight = 30;
  int age = 10;
  bool selectmaleContainer = false;
  bool selectfemaleContainer = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.black87,
        appBar: AppBar(
          title: const Text('BMI Calculator'),
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selectmaleContainer = true;
                      selectfemaleContainer = false;
                    });
                  },
                  child: Container(
                    height: 130,
                    width: 120,
                    decoration: BoxDecoration(
                      color: selectmaleContainer == true
                          ? Colors.green
                          : Colors.brown,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(Icons.male),
                        SizedBox(
                          height: 15,
                        ),
                        Center(
                            child: Text(
                          'MALE',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selectfemaleContainer = true;
                      selectmaleContainer = false;
                    });
                  },
                  child: Container(
                    height: 130,
                    width: 120,
                    decoration: BoxDecoration(
                      color: selectfemaleContainer == true
                          ? Colors.green
                          : Colors.brown,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(Icons.female),
                        SizedBox(
                          height: 15,
                        ),
                        Center(
                            child: Text(
                          'FEMALE',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Container(
                    height: 150,
                    width: 280,
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(children: [
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Height',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                onTap: () {
                                  height = height + 1;
                                  setState(() {});
                                },
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child:
                                      const Center(child: Icon(Icons.plus_one)),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 70,
                                width: 90,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                    child: Text(
                                  height.toString() + ' cm',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                )),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                onTap: () {
                                  height = height - 1;
                                  setState(() {});
                                },
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Center(
                                      child: Icon(Icons.exposure_minus_1)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ]),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Container(
                  height: 160,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Weight',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 50,
                        width: 80,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                            child: Text(
                          weight.toString() + ' KG',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Colors.blue),
                        )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: InkWell(
                              onTap: () {
                                weight = weight + 1;
                                setState(() {});
                              },
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child:
                                    const Center(child: Icon(Icons.plus_one)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          InkWell(
                            onTap: () {
                              weight = weight - 1;
                              setState(() {});
                            },
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: const Center(
                                  child: Icon(Icons.exposure_minus_1_outlined)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 160,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Age',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 50,
                        width: 80,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          //borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                            child: Text(
                          age.toString() + ' Y',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                              color: Colors.blue),
                        )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: InkWell(
                              onTap: () {
                                age = age + 1;
                                setState(() {});
                              },
                              child: Container(
                                height: 35,
                                width: 35,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child:
                                    const Center(child: Icon(Icons.plus_one)),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          InkWell(
                            onTap: () {
                              age = age - 1;
                              setState(() {});
                            },
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: const Center(
                                  child: Icon(Icons.exposure_minus_1_outlined)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ]),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                bmi = ((weight) / ((height * 0.01) * (height * 0.01)));
                result = bmi.toInt();

                setState(() {});
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                    child: Text(
                  'Calculate Your BMI',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                )),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Your BMI is:   ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.brown),
                ),
                Container(
                  height: 90,
                  width: 90,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                      child: Text(
                    result.toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                  )),
                ),
                const SizedBox(
                  width: 10,
                ),
                TextButton(
                  onPressed: () {
                    height = 0;
                    weight = 0;
                    age = 0;
                    bmi = 0;
                    result = 0;
                    selectmaleContainer = false;
                    selectfemaleContainer = false;
                    setState(() {
                      
                    });
                  },
                  child: const Text(
                    'CLEAR ALL',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
