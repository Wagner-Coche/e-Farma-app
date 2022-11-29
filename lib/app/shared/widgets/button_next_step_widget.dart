import 'package:flutter/material.dart';
import 'package:e_farma/app/shared/colors_default.dart';

class ButtonNextStepWidget extends StatelessWidget {
  const ButtonNextStepWidget({super.key, this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * .04),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .12,
            width: MediaQuery.of(context).size.width * .22,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: ColorsDefault.greenDark,
                width: MediaQuery.of(context).size.width * .005,
              )
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .09,
            width: MediaQuery.of(context).size.width * .18,
            child: ElevatedButton(
              onPressed: onPressed, 
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorsDefault.greenDark,
                foregroundColor: ColorsDefault.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)
                )
              ),
              child: Icon(
                Icons.arrow_forward_rounded, 
                color: ColorsDefault.white,
              )
            ),
          ),
        ],
      ),
    );
  }
}

// class MyPaint extends CustomPainter {
//   MyPaint();

//   final pointMode = PointMode.points;
//   final points = const [
//     Offset(50, 50),
//     Offset(150, 00),
//     Offset(150, 150),
//     Offset(50, 150),
//   ];
//   final painter = Paint()
//     ..color = Colors.red
//     ..strokeWidth = 20
//     ..strokeCap = StrokeCap.round; 

//   @override
//   void paint(Canvas canvas, Size size) {
//     canvas.drawPoints(pointMode, points, painter);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     throw UnimplementedError();
//   }
// }


 







