import 'package:flutter/material.dart';
import 'package:shaq_express/widgets/take_photo.dart';

class CreateArtisanPage2 extends StatelessWidget {
  const CreateArtisanPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.popAndPushNamed(
                        context, '/create_artisan_page1'),
                    child: Icon(Icons.adaptive.arrow_back),
                  ),
                  const Text('Artisan Profile'),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Save',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Text('Passport Picture'),
              const SizedBox(height: 10),
              const TakePhotoWidget(
                icon: Icon(Icons.camera),
                title: 'Take Photo',
              ),
              const SizedBox(height: 24),
              Text('Image of Ghana Card'),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  TakePhotoWidget(
                    icon: Icon(Icons.camera),
                    title: 'Take Photo',
                    subTitle: 'Front of card',
                  ),
                  TakePhotoWidget(
                    icon: Icon(Icons.camera),
                    title: 'Take Photo',
                    subTitle: 'Back of card',
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Text("Image of guarantor's Ghana Card"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  TakePhotoWidget(
                    icon: Icon(Icons.camera),
                    title: 'Take Photo',
                    subTitle: 'Front of card',
                  ),
                  TakePhotoWidget(
                    icon: Icon(Icons.camera),
                    title: 'Take Photo',
                    subTitle: 'Back of card',
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Text('Police report'),
              const SizedBox(height: 10),
              const TakePhotoWidget(
                icon: Icon(Icons.camera),
                title: 'Take Photo',
              ),
              const SizedBox(height: 24),
              Text('Utility bill'),
              const SizedBox(height: 10),
              const TakePhotoWidget(
                icon: Icon(Icons.camera),
                title: 'Take Photo',
              ),
              const SizedBox(height: 24),
              InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, '/create_artisan_page3'),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.red,
                  ),
                  child: Text(
                    'Continue',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      )),
    );
  }
}
