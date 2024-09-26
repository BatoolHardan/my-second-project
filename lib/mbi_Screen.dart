import 'package:bmi_batool/result.dart';
import 'package:flutter/material.dart';

class MbiScreen extends StatefulWidget {
  const MbiScreen({super.key});

  @override
  State<MbiScreen> createState() => _MbiScreenState();
}

class _MbiScreenState extends State<MbiScreen> {
  int age = 25;

  int height = 150;

  int weight = 50;

  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD1D9E6),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.light_mode_outlined,
                          color: Colors.blue,
                        ),
                        Icon(
                          Icons.dark_mode_outlined,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'welcome',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                const Text(
                  'BMI CALCULATOR',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          isMale = false;
                          setState(() {});
                        },
                        child: Container(
                          width: 180,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: isMale ? Colors.white : Colors.blue,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                color: !isMale ? Colors.white : Colors.blue,
                              ),
                              Text(
                                'Female',
                                style: TextStyle(
                                  color: !isMale ? Colors.white : Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 10,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          isMale = true;
                          setState(() {});
                        },
                        child: Container(
                          width: 180,
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: !isMale ? Colors.white : Colors.blue,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                color: isMale ? Colors.white : Colors.blue,
                              ),
                              Text(
                                'male',
                                style: TextStyle(
                                  color: isMale ? Colors.white : Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 500,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              const Text('Height'),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    RotatedBox(
                                      quarterTurns: 3,
                                      child: SliderTheme(
                                        data: const SliderThemeData(
                                            trackHeight: 15,
                                            thumbShape: RoundSliderThumbShape(
                                                enabledThumbRadius: 0)),
                                        child: Slider(
                                            value: height.toDouble(),
                                            min: 110,
                                            max: 200,
                                            onChanged: (s) {
                                              height = s.toInt();
                                              setState(() {});
                                            }),
                                      ),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      verticalDirection: VerticalDirection.up,
                                      children: [
                                        for (int i = 1; i <= 10; i++)
                                          Row(
                                            children: [
                                              const SizedBox(
                                                width: 50,
                                                child: Divider(
                                                  thickness: 3,
                                                  color: Colors.amber,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 20,
                                              ),
                                              Text((100 + i * 10).toString()),
                                            ],
                                          ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                children: [
                                  const Text(
                                    'Weight',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Text(
                                    weight.toString(),
                                    style: const TextStyle(
                                        fontSize: 70,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          weight--;
                                          setState(() {});
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          child: const Icon(
                                            Icons.remove,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          weight++;
                                          setState(() {});
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          child: const Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 20,
                            ),
                            Expanded(
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12)),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    const Text(
                                      'Age',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(
                                      age.toString(),
                                      style: const TextStyle(
                                          fontSize: 70,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            if (age > 15) {
                                              age--;
                                            }
                                            setState(() {});
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                color: Colors.blue,
                                                borderRadius:
                                                    BorderRadius.circular(12)),
                                            child: const Icon(
                                              Icons.remove,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            if (age < 80) {
                                              age++;
                                            }
                                            setState(() {});
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                color: Colors.blue,
                                                borderRadius:
                                                    BorderRadius.circular(12)),
                                            child: const Icon(Icons.add,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ResultPage(),
                        ),
                      );
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.blue),
                    child: const Center(
                        child: Text(
                      'Lets go',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
