import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ImagePicker _imagePicker = ImagePicker();

  PickedFile? image;

  Future<void> _openCamera() async {
    image = await _imagePicker.getImage(source: ImageSource.camera);
    if (image!= null) {
      // Do something with the image
      print('Image path: ${image!.path}');
    } else {
      print('No image selected');
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title:const Text('Plant Classifier'),
        ),
        backgroundColor: Color.fromARGB(255, 125, 241, 86), // Add this line
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  _openCamera();
                },
                child:const SizedBox(
                  width: 200,
                  height: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Camera',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Add your code to chat with the bot here
                  print('Chat with bot');
                },
                child:const SizedBox(
                  width: 200,
                  height: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Chat with Bot',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}