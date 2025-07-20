import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({
    super.key,
    required this.onPickImage,
    required this.height,
    required this.radius,
    required this.width,
    required this.defaultIcon,
    this.circular = true,
  });

  final void Function(File image) onPickImage;
  final double height, width, radius;
  final IconData defaultIcon;
  final bool? circular;
  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File? _selectedImage;

  void _takePicture() async {
    final imagePicker = ImagePicker();
    final pickedImage =
        await imagePicker.pickImage(source: ImageSource.gallery, maxWidth: 600);
    if (pickedImage == null) {
      return;
    }
    setState(() {
      _selectedImage = File(pickedImage.path);
    });
    widget.onPickImage(_selectedImage!);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _takePicture,
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          shape: widget.circular!
              ? BoxShape.circle
              : BoxShape.rectangle, // Ensures circular container
          border: Border.all(width: 2, color: Colors.grey),
          color: Theme.of(context).colorScheme.onPrimary.withAlpha(20),
        ),
        child: widget.circular!? ClipOval(
          child: _selectedImage != null
              ? Image.file(
                  _selectedImage!,
                  fit: BoxFit.cover,
                  width: widget.width,
                  height: widget.height,
                )
              : Icon(widget.defaultIcon, size: 50, color: Colors.grey),
        ):ClipRect(child: _selectedImage != null
              ? Image.file(
                  _selectedImage!,
                  fit: BoxFit.cover,
                  width: widget.width,
                  height: widget.height,
                )
              : Icon(widget.defaultIcon, size: 50, color: Colors.grey),),
      ),
    );
  }
}
