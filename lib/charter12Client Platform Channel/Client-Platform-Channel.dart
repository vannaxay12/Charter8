import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Client_Platform_Channel_App extends StatefulWidget {
  const Client_Platform_Channel_App({super.key});

  @override
  State<Client_Platform_Channel_App> createState() =>
      _Client_Platform_Channel_AppState();
}

class _Client_Platform_Channel_AppState
    extends State<Client_Platform_Channel_App> {
  static const _methodChannel =
      const MethodChannel('platformchannel.companyname.com/deviceinfo');
  String _deviceInfo = '';
  Future<void> _getDeviceInfo() async {
    String deviceInfo;
    try {
      deviceInfo = await _methodChannel.invokeMethod('getDeviceInfo');
    } on PlatformException catch (e) {
      deviceInfo = "Failed to get device info: '${e.message}'.";
    }
    setState(() {
      _deviceInfo = deviceInfo;
    });
  }

  @override
  void initState() {
    super.initState();
    _getDeviceInfo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Client_Platform_Channel_App"),
      ),
      body: SafeArea(
        child: ListTile(
          title: Text(
            'Device info:',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            _deviceInfo,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          contentPadding: EdgeInsets.all(16.0),
        ),
      ),
    );
  }
}
