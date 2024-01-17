import 'package:flutter/material.dart';
import 'package:feeder/KolamPage.dart';
import 'package:feeder/model/komponen.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    shadowColor: Colors.white,
  );
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Scaffold(
      backgroundColor: Colors.white,
      drawer: const MenuSide(),
      // appBar: const drawerBar(),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.8, 1),
              colors: [Color.fromARGB(1, 46, 142, 196), Colors.white]),
        ),
        child: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 120,
                    height: 80,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: const Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hallo, Ayat',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Welcome back !',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Color(0xFF85868C),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Container(
                      width: 80,
                      height: 80,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        'https://picsum.photos/seed/249/600',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: 100,
                height: 10,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                ),
              ),
              Container(
                width: 340,
                height: 90,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 7,
                      color: Color(0x33000000),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 125,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Kolam',
                            style: TextStyle(
                              fontFamily: 'Readex Pro',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '1',
                            style: TextStyle(
                              fontFamily: 'Readex Pro',
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 125,
                      height: 55,
                      decoration: BoxDecoration(
                        color: const Color(0xFF9DC9E2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Add Kolam',
                            style: TextStyle(
                              fontFamily: 'Readex Pro',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.settings_outlined,
                            color: Colors.black,
                            size: 24,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Container(
                  width: 340,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: const Text(
                    'Kolam',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const KolamPage()));
                        },
                        child: Container(
                          width: 320,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment:
                                    const AlignmentDirectional(-0.85, -0.16),
                                child: Container(
                                  width: 65,
                                  height: 65,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.network(
                                    'https://picsum.photos/seed/679/600',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Align(
                                alignment: AlignmentDirectional(0.84, 0.74),
                                child: Text(
                                  '2000 mL',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Color(0xFF85868C),
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              const Align(
                                alignment: AlignmentDirectional(0.85, 0.32),
                                child: Text(
                                  'Sisa Probiotik',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Color(0xFF85868C),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              const Align(
                                alignment: AlignmentDirectional(0.85, -0.76),
                                child: Text(
                                  'Sisa Pakan',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Color(0xFF85868C),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              const Align(
                                alignment: AlignmentDirectional(0.85, -0.45),
                                child: Text(
                                  '30 Kg',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Color(0xFF85868C),
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              const Align(
                                alignment: AlignmentDirectional(-0.27, 0.24),
                                child: Text(
                                  'Kolam 1',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const Align(
                                alignment: AlignmentDirectional(-0.32, 0.60),
                                child: Text(
                                  '28 Hari',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Color(0xFF85868C),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
