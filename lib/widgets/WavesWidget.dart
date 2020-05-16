import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';
import 'dart:math' as math; // import this

class WavesTopWidget extends StatelessWidget{
  final List<Color> gradient;

  const WavesTopWidget({Key key, this.gradient}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: FractionalOffset.center,
      transform: Matrix4.rotationZ(math.pi),
        child: SizedBox(
          height: 40,
          child: Container(
            child: _Waves(
            config: CustomConfig(
              gradients: [
                [Color(0x306C18A4), Color(0x303827B4)],
                [Color(0x506C18A4), Color(0x503827B4)],
                [Color(0x706C18A4), Color(0x703827B4)],
                [Color(0xFF6C18A4), Color(0xFF3827B4)],
              ],
              gradientBegin: Alignment.centerLeft,
              gradientEnd: Alignment.centerRight,
              durations: [32000, 21000, 18000, 5000],
              heightPercentages: [0.10, 0.15, 0.20, 0.25],
            )
          ),
        )
      ),
    );
  }
}

class WavesBottumWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: _Waves(
        config: CustomConfig(
          gradients: [
            [Color(0x303827B4), Color(0x306C18A4)],
            [Color(0x503827B4), Color(0x506C18A4)],
            [Color(0x703827B4), Color(0x706C18A4)],
            [Color(0xFF3827B4), Color(0xFF6C18A4)],
          ],
          gradientBegin: Alignment.centerLeft,
          gradientEnd: Alignment.centerRight,
          durations: [32000, 21000, 18000, 5000],
          heightPercentages: [0.10, 0.15, 0.20, 0.25],
        )
      ),
    );
  }
}

class _Waves extends StatelessWidget{
  final Config config;

  const _Waves({Key key, this.config}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: WaveWidget(
        config: config,
        size: Size(double.infinity, double.infinity),
        waveAmplitude: 0,
      ),
    );
  }
}