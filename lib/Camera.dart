import 'package:flutter/material.dart';

class Camera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white12,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 150,
          child: Center(
            child: Stack(
              children: [
                Center(
                  child: ClipOval(
                    child: Container(
                      width: 71,
                      height: 71,
                      color: Colors.white,
                    ),
                  ),
                ),
                Center(
                  child: ClipOval(
                    child: Container(
                      width: 65,
                      height: 65,
                      color: Colors.redAccent,
                    ),
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
