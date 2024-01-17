import 'package:feeder/LoginPage.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/services.dart';

class WidgetTextField extends StatelessWidget {
  const WidgetTextField({
    Key? key,
    required this.obscureText,
    this.hintText,
  }) : super(key: key);

  final bool obscureText;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            color: Color(0xFFE0E3E7),
            style: BorderStyle.solid,
            width: 2,
          ),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          fontFamily: 'Manrope',
          color: Color(0xFF161C24),
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFE0E3E7),
            style: BorderStyle.solid,
            width: 2,
          ),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFE0E3E7),
            style: BorderStyle.solid,
            width: 2,
          ),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xFFE0E3E7),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0x00000000),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      style: const TextStyle(
        fontFamily: 'Manrope',
        color: Color(0xFF161C24),
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class WidgetButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final WidgetButtonOps options;

  const WidgetButton(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.options});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: MaterialStateProperty.all(options.padding),
        backgroundColor: MaterialStateProperty.all(options.color),
        elevation: MaterialStateProperty.all(options.elevation),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: options.borderRadius,
          ),
        ),
      ),
      child: Container(
          alignment: const AlignmentDirectional(0.00, 0.00),
          width: double.infinity,
          child: Text(
            text,
            style: options.textStyle,
          )),
    );
  }
}

class WidgetButtonOps {
  final double width;
  final double height;
  final EdgeInsetsDirectional padding;
  final EdgeInsetsDirectional iconPadding;
  final Color color;
  final TextStyle textStyle;
  final double elevation;
  final BorderRadius borderRadius;

  WidgetButtonOps({
    required this.width,
    required this.height,
    required this.padding,
    required this.iconPadding,
    required this.color,
    required this.textStyle,
    required this.elevation,
    required this.borderRadius,
  });
}

class MenuSide extends StatelessWidget {
  const MenuSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 16,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 203,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 140,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: CachedNetworkImageProvider(
                          'https://images.unsplash.com/photo-1434394354979-a235cd36269d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fG1vdW50YWluc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
                        )),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.08, 1.12),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 0, 16),
                    child: Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                        color: const Color(0x66249689),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(0xFF39D2C0),
                          width: 2,
                        ),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                            'https://picsum.photos/seed/249/600',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
            child: Text(
              'Ayaturrahman Akrabullah',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24, 2, 0, 15),
            child: Text(
              'akrabullah@gmail.com',
              style: TextStyle(
                fontFamily: 'Readex Pro',
                fontSize: 14,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
            child: SizedBox(
              width: 110,
              child: WidgetButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPageWidget()));
                },
                text: 'Log Out',
                options: WidgetButtonOps(
                  width: 100,
                  height: 40,
                  padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                  iconPadding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  color: const Color(0xFF9DC9E2),
                  textStyle: const TextStyle(
                    fontFamily: 'Readex Pro',
                    color: Color(0xFF14181B),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  elevation: 3,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class drawerBar extends StatelessWidget implements PreferredSizeWidget {
  const drawerBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_rounded,
          color: Color(0xFF14181B),
          size: 30,
        ),
        onPressed: () => const MenuSide(),
      ),
      actions: const [],
      centerTitle: true,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class barApp extends StatelessWidget implements PreferredSizeWidget {
  const barApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_rounded,
          color: Color(0xFF14181B),
          size: 30,
        ),
        onPressed: () async {
          Navigator.pop(context);
        },
      ),
      actions: const [],
      centerTitle: true,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
