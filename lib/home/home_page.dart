import 'package:flutter/material.dart';
import 'package:weatherapp/home/widget/down_homepage_temp.dart';
import '../home/widget/humidity_measure.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late final TabController tabController =
      TabController(length: 3, vsync: this);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: height,
          padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
          // color: Colors.amber,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/blackk.svg',
                ),
                fit: BoxFit.cover),
          ),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 20,
                  ),
                  decoration: BoxDecoration(
                    // color: Colors.amber,
                    borderRadius: BorderRadius.circular(17),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      opacity: 0.8,
                      image: AssetImage(
                        'assets/images/temple.png',
                      ),
                    ),
                  ),
                  child: Row(children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Kyoto',
                          style: TextStyle(
                            letterSpacing: -2,
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: 160,
                          // color: Colors.amber,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Tue 28 March',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                height: 7,
                                width: 7,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    border: Border.all(
                                        color: Colors.white, width: 1)),
                              ),
                              const Text(
                                '9:00 AM',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.window_outlined,
                      size: 20,
                      color: Colors.white,
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 120,
                  // color: Colors.red,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                '18',
                                style: TextStyle(
                                    fontSize: 60,
                                    color: Colors.white,
                                    letterSpacing: -10),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                'o',
                                style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 4.0),
                                child: Text(
                                  'C',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 60,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            'THUNDERSTORM',
                            style: TextStyle(
                                color: Colors.white, letterSpacing: 2),
                          )
                        ],
                      ),
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.only(top: 16.0),
                        child: Icon(
                          Icons.cloudy_snowing,
                          size: 60,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 150,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          height: 160,
                          // width: 170,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 35, 55, 61)
                                .withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Kyoto',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    letterSpacing: -1),
                              ),
                              // const Spacer(),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                'A wet day in Cairo & its environs. A low upto 5 celsius is expected.',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 4,
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const HumidityMeasure(
                                height: 70,
                                icon: Icons.cloud_queue,
                                wheather: 'Rain',
                                percentage: '86.9%'),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: const [
                                Expanded(
                                  child: HumidityMeasure(
                                      height: 70,
                                      icon: Icons.water_drop_outlined,
                                      wheather: 'Humidity',
                                      percentage: '32.6%'),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: HumidityMeasure(
                                      height: 70,
                                      icon: Icons.air,
                                      wheather: 'Wind',
                                      percentage: '3.5m/s'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 50,
                  child: TabBar(
                    controller: tabController,
                    isScrollable: true,
                    indicatorColor: Colors.white,
                    labelColor: Colors.white,
                    tabs: const [
                      Text(
                        'Today',
                      ),
                      Text('Tomorrow', textAlign: TextAlign.left),
                      Text('Next 7 Days', textAlign: TextAlign.left),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 100,
                  child: TabBarView(controller: tabController, children: const [
                    TempDownHomePage(),
                    TempDownHomePage(),
                    TempDownHomePage()
                  ]),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                    height: 120,
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 10),
                    // color: const Color.fromARGB(255, 35, 55, 61).withOpacity(0.5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 35, 55, 61)
                          .withOpacity(0.5),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Row(
                              children: const [
                                Text('Top',
                                    style: TextStyle(
                                        letterSpacing: -1,
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  width: 4,
                                ),
                                Text('News',
                                    style: TextStyle(
                                        letterSpacing: -1,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 20))
                              ],
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {},
                              child: SizedBox(
                                child: Row(
                                  children: const [
                                    Text(
                                      'More',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.arrow_forward,
                                      size: 15,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'Rice farms welcome rain in Eastern Kyoto',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Onksu farming picks up farming again in the farms welcome rain in Eastern Kyoto sbs sbshc scbhc sbchcbc bschbcs',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    )),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          color: const Color.fromARGB(255, 35, 55, 61),
          height: 70,
          width: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // height: 70,
                padding: const EdgeInsets.only(
                    left: 5, top: 5, bottom: 5, right: 10),
                decoration: BoxDecoration(
                  // color: Colors.amber,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: Colors.white),
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.home_rounded,
                      color: Colors.white,
                      size: 25,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'home',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const BottomNavigationItem(
                icon: Icons.search,
              ),
              const BottomNavigationItem(icon: Icons.tab_rounded),
              const BottomNavigationItem(icon: Icons.speaker_notes_outlined),
              const BottomNavigationItem(icon: Icons.settings),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomNavigationItem extends StatelessWidget {
  const BottomNavigationItem({
    required this.icon,
    super.key,
  });
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        // color: Colors.amber,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2, color: Color.fromARGB(75, 255, 255, 255)),
      ),
      child: Icon(
        color: Colors.white,
        icon,
        size: 25,
      ),
    );
  }
}
