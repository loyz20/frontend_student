import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SelfieSection extends StatelessWidget {
  final XFile? image;
  final Future<void> Function() onTakeSelfie;

  const SelfieSection({
    super.key,
    required this.image,
    required this.onTakeSelfie,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (image != null)
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.file(
              File(image!.path),
              height: 200.0,
              width: 200.0,
              fit: BoxFit.cover,
            ),
          )
        else
          Container(
            height: 200.0,
            width: 200.0,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(12.0),
            ),
            alignment: Alignment.center,
            child: const Icon(
              Icons.camera_alt,
              size: 100.0,
              color: Colors.grey,
            ),
          ),
        const SizedBox(height: 16.0),
        ElevatedButton(
          onPressed: onTakeSelfie,
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: Colors.blueAccent,
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            elevation: 5.0,
          ),
          child: const Text('Take Selfie'),
        ),
      ],
    );
  }
}
