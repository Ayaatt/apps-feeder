import 'package:flutter/material.dart';
import 'package:feeder/DashboardPage.dart';
import 'package:feeder/model/komponen.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({Key? key}) : super(key: key);

  @override
  State<LoginPageWidget> createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SafeArea(
            top: true,
            child: Align(
                alignment: const AlignmentDirectional(0.00, -1.00),
                child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: 120,
                          height: 120,
                          clipBehavior: Clip.antiAlias,
                          decoration:
                              const BoxDecoration(shape: BoxShape.circle),
                          child: Image.network(
                              'https://picsum.photos/seed/668/600',
                              fit: BoxFit.cover)),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Container(
                          width: double.infinity,
                          height: 70,
                          alignment: const AlignmentDirectional(0.00, 0.00),
                          child: const Text(
                            "Feederman",
                            style: TextStyle(
                              fontFamily: 'Outfit',
                              color: Color(0xFF16184A),
                              fontSize: 36,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20, 10, 20, 12),
                          child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: const Color(0xFF9FCBE3),
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: const Color(0xFFF0F5F9),
                                    width: 2,
                                  )),
                              child: Align(
                                  alignment:
                                      const AlignmentDirectional(0.00, 0.00),
                                  child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              24, 24, 24, 24),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text("Welcome",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  color: Color(0xFF161C24),
                                                  fontSize: 36,
                                                  fontWeight: FontWeight.w600,
                                                )),
                                            const Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 12, 0, 24),
                                              child: Text(
                                                "Silahkan masuk dengan akun yang sudah dibuat",
                                                style: TextStyle(
                                                  fontFamily: 'Manrope',
                                                  color: Color(0xFF636F81),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                            const Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 16),
                                                child: WidgetTextField(
                                                  obscureText: false,
                                                  hintText: "Email",
                                                )),
                                            const Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 16),
                                                child: WidgetTextField(
                                                  obscureText: true,
                                                  hintText: "Password",
                                                )),
                                            WidgetButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const DashboardPage()));
                                              },
                                              text: 'Log in',
                                              options: WidgetButtonOps(
                                                width: double.infinity,
                                                height: 44,
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(0, 0, 0, 0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(0, 0, 0, 0),
                                                color: const Color(0xFF2797FF),
                                                textStyle: const TextStyle(
                                                  fontFamily: 'Manrope',
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                                elevation: 3,
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 4, 0, 4),
                                                  child: Text(
                                                    'Don\'t have an account?',
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(4, 4, 0, 4),
                                                  child: TextButton(
                                                      onPressed: () {},
                                                      child: const Text(
                                                        'Sign Up Here',
                                                        style: TextStyle(
                                                          fontFamily: 'Manrope',
                                                          color:
                                                              Color(0xFF2797FF),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      )),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      )))))
                    ]))));
  }
}
