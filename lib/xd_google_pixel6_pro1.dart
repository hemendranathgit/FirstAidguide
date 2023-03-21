import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 12.0, end: 12.0),
            Pin(size: 48.0, start: 22.0),
            child: Stack(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      color: const Color(0xffffffff),
                    ),
                  ],
                ),
                Pinned.fromPins(
                  Pin(size: 27.0, start: 15.0),
                  Pin(size: 18.0, middle: 0.4667),
                  child:
                      // Adobe XD layer: 'Icon material-menu' (shape)
                      SvgPicture.string(
                    _svg_yl1xcu,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Align(
                  alignment: Alignment(0.109, -0.04),
                  child: SizedBox(
                    width: 132.0,
                    height: 23.0,
                    child: Text(
                      'First Aid Guide',
                      style: TextStyle(
                        fontFamily: 'Helvetica Neue',
                        fontSize: 20,
                        color: const Color(0xffff841a),
                        shadows: [
                          Shadow(
                            color: const Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          )
                        ],
                      ),
                      textAlign: TextAlign.center,
                      softWrap: false,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 32.3, end: 20.0),
                  Pin(size: 33.5, start: 6.2),
                  child:
                      // Adobe XD layer: 'Icon awesome-user-a…' (shape)
                      SvgPicture.string(
                    _svg_x4fj28,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_yl1xcu =
    '<svg viewBox="27.0 36.0 27.0 18.0" ><path transform="translate(22.5, 27.0)" d="M 4.5 27 L 31.5 27 L 31.5 24 L 4.5 24 L 4.5 27 Z M 4.5 19.5 L 31.5 19.5 L 31.5 16.5 L 4.5 16.5 L 4.5 19.5 Z M 4.5 9 L 4.5 12 L 31.5 12 L 31.5 9 L 4.5 9 Z" fill="#ed7c29" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_x4fj28 =
    '<svg viewBox="347.7 28.2 32.3 33.5" ><path transform="translate(347.74, 28.23)" d="M 16.12847900390625 18.87114524841309 C 21.13712692260742 18.87114524841309 25.20074844360352 14.64479446411133 25.20074844360352 9.435572624206543 C 25.20074844360352 4.226349830627441 21.13712692260742 0 16.12847900390625 0 C 11.11983013153076 0 7.056209564208984 4.226349830627441 7.056209564208984 9.435572624206543 C 7.056209564208984 14.64479446411133 11.11983013153076 18.87114524841309 16.12847900390625 18.87114524841309 Z M 24.19271850585938 20.96793746948242 L 20.72131538391113 20.96793746948242 C 19.32267379760742 21.63629150390625 17.76652717590332 22.01633453369141 16.12847900390625 22.01633453369141 C 14.49043083190918 22.01633453369141 12.94058418273926 21.63629150390625 11.53564262390137 20.96793746948242 L 8.064239501953125 20.96793746948242 C 3.610007286071777 20.96793746948242 0 24.72250938415527 0 29.3551139831543 L 0 30.40351104736328 C 0 32.13991928100586 1.354540228843689 33.54870223999023 3.024089813232422 33.54870223999023 L 29.23286819458008 33.54870223999023 C 30.90241813659668 33.54870223999023 32.2569580078125 32.13991928100586 32.2569580078125 30.40351104736328 L 32.2569580078125 29.3551139831543 C 32.2569580078125 24.72250938415527 28.64695167541504 20.96793746948242 24.19271850585938 20.96793746948242 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
