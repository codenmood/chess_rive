import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';
import 'package:rive/rive.dart';

import '../../../core/component/dialog/loading_dialog.dart';
import '../../../core/theme/app_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  ChessBoardController controller = ChessBoardController();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    print("Build Called Again");
    return Scaffold(
      backgroundColor: Colors.brown.shade900,
      appBar: AppBar(
        backgroundColor: Colors.brown.shade900,
        toolbarHeight: 120,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              width: 20,
            ),
            const Text(
              'Lets Begin \n    The Game',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                  color: Colors.black
              ),
              //<-- SEE HERE
            ),
        Container(
              width:80,
              height: 80,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/chess.png"),
                    fit: BoxFit.fitHeight
                  )
          )
      ),
          ],
        ),
      ),
      body: Center(
        child: ChessBoard(
          controller: controller,
          boardColor: BoardColor.brown,
          boardOrientation: PlayerColor.white,
          size: 340,
          onMove: (){

          },
          arrows: [
            BoardArrow(
                from: "b2",
                to: "b3",
              color: Colors.brown.withOpacity(0.5)
            )
          ],

        ),
      ),

    );
  }
}
