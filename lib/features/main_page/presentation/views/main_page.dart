import 'package:flutter/material.dart';
import 'package:qr_pro_scan/features/qr_code/presentation/views/generate_qr_code.dart';
import 'package:qr_pro_scan/features/qr_code/presentation/views/scan_qr_code.dart';
import 'package:flutter/services.dart';
import 'package:qr_flutter/qr_flutter.dart';


class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF333333),
      appBar: AppBar(
        backgroundColor: const Color(0xFF333333),
        title: Text('Generate Qr code',
        style: TextStyle(
          color: Colors.white,
        ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScanQRCode()));
                  });
                },
                child: Text('Scan Qr Code',
                style: TextStyle(
                  color: Colors.black,
                ),
                )
            ),
          ),
          SizedBox(height: 48,),
          ElevatedButton(
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GenerateQrCode()));
              },
              child: Text('Generate Qr Code',
              style: TextStyle(
                color: Colors.black,
              ),
              ),
          )
        ],
      ),
    );
  }
}

