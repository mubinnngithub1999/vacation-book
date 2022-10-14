import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Island());
}

class Island extends StatefulWidget {
  const Island({super.key});

  @override
  State<Island> createState() => _IslandState();
}

class _IslandState extends State<Island> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double price = 1;
  bool heart = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        //  color: Colors.amber,
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                // width: double.infinity,
                // height: double.infinity,
                child: Image.asset('image/bg.jpg'),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                child: Container(
                  color: Colors.white,
                  width: double.infinity,
                  height: 580,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 5, 20, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 23,
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                          child: Text(
                            'Koh Samui',
                            style: TextStyle(
                                fontFamily: "times_new_roman",
                                fontSize: 28,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Row(
                          children: const [
                            SizedBox(
                              height: 40,
                            ),
                            Icon(
                              Icons.location_on,
                              color: Color.fromARGB(255, 60, 164, 154),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              'Thailand',
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 14,
                                // fontWeight: FontWeight.w600
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                          child: Text(
                            "Ko Samui, Thailand’s second largest island, lies in the Gulf of Thailand off the east coast of the Kra Isthmus. It's known v its palm-fringed beaches, coconut groves and dense, mountainous rainforest, plus luxury resorts and posh spas.",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                color: Colors.grey.shade600,
                                fontSize: 10,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                          child: Text(
                            'Services',
                            style: TextStyle(
                                fontFamily: "times_new_roman",
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Container(
                                      color:
                                          const Color.fromARGB(0, 214, 252, 247)
                                              .withOpacity(1),
                                      width: 60,
                                      height: 60,
                                      child: const Icon(
                                        Icons.restaurant,
                                        color:
                                            Color.fromARGB(255, 60, 164, 154),
                                        size: 25,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    'Restaurant',
                                    style: TextStyle(
                                        fontFamily: "Poppins", fontSize: 10),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Container(
                                      color:
                                          const Color.fromARGB(0, 214, 252, 247)
                                              .withOpacity(1),
                                      width: 60,
                                      height: 60,
                                      child: const Icon(
                                        Icons.hotel,
                                        color:
                                            Color.fromARGB(255, 60, 164, 154),
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    'Hotel',
                                    style: TextStyle(
                                        fontFamily: "Poppins", fontSize: 10),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Container(
                                      color:
                                          const Color.fromARGB(0, 214, 252, 247)
                                              .withOpacity(1),
                                      width: 60,
                                      height: 60,
                                      child: const Icon(
                                        Icons.directions_boat,
                                        color:
                                            Color.fromARGB(255, 60, 164, 154),
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    'Free Boating',
                                    style: TextStyle(
                                        fontFamily: "Poppins", fontSize: 10),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Text(
                          'Price',
                          style: TextStyle(
                              fontFamily: "times_new_roman",
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "${price.round()} day / \$${((price.round()) * (12.99)).toStringAsFixed(2)}",
                          style: const TextStyle(
                              color: Color.fromARGB(255, 49, 164, 153),
                              fontSize: 10),
                        ),
                        const SizedBox(
                          height: 1,
                        ),
                        Column(
                          children: [
                            Slider(
                                value: price,
                                min: 1,
                                max: 13,
                                divisions: 14,
                                activeColor:
                                    const Color.fromARGB(255, 60, 164, 154),
                                inactiveColor: Colors.teal[50],
                                onChanged: (value) {
                                  setState(() {
                                    price = value;
                                  });
                                }),
                            const SizedBox(
                              height: 1,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: TextButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                    const Color.fromARGB(255, 60, 164, 154),
                                  ),
                                ),
                                child: Container(
                                  width: double.infinity,
                                  height: 35,
                                  alignment: Alignment.center,
                                  child: const Text(
                                    'Book',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Align(
              child: SizedBox(
                height: 310,
                // color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            heart = !heart;
                          });
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(13),
                          child: Container(
                            color: const Color.fromARGB(255, 64, 176, 165)
                                .withOpacity(1),
                            width: 60,
                            height: 60,
                            child: Icon(
                              heart == false
                                  ? CupertinoIcons.heart
                                  : CupertinoIcons.heart_fill,
                              color: Colors.white,
                              size: 38,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
