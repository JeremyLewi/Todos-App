import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(10, 20, 0, 0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 180,
              height: 40,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text('Batal',
                    style: TextStyle(color: Colors.blue, fontSize: 18),
                    textAlign: TextAlign.center),
                style: ElevatedButton.styleFrom(primary: Colors.white),
              ),
            ),
            SizedBox(
              width: 180,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Simpan',
                  style: TextStyle(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.blue),
              ),
            ),
          ],
        ));
  }
}