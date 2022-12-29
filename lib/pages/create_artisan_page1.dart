import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CreateArtisanPage1 extends StatelessWidget {
  const CreateArtisanPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.popAndPushNamed(context, '/'),
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
                const SizedBox(height: 26),
                FormBuilder(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: FormBuilderTextField(
                              name: 'first_name',
                              decoration: const InputDecoration(
                                hintText: "First name",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: FormBuilderTextField(
                              name: 'last_name',
                              decoration: const InputDecoration(
                                hintText: "Last name",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: FormBuilderDropdown(
                              name: 'artisan_category',
                              items: [
                                'Water Supply',
                                'Carpenter',
                                'Electrician'
                              ]
                                  .map((val) => DropdownMenuItem(
                                      value: val, child: Text(val)))
                                  .toList(),
                              decoration: const InputDecoration(
                                  hintText: 'Artisan Category',
                                  border: OutlineInputBorder()),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: FormBuilderDropdown(
                              name: 'type_of_business',
                              items: ['Individual', 'Agency']
                                  .map((val) => DropdownMenuItem(
                                      value: val, child: Text(val)))
                                  .toList(),
                              decoration: const InputDecoration(
                                  hintText: 'Type of business',
                                  border: OutlineInputBorder()),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: FormBuilderTextField(
                              name: 'business_name',
                              decoration: const InputDecoration(
                                hintText: "Business name",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: FormBuilderTextField(
                              name: 'business_email',
                              decoration: const InputDecoration(
                                hintText: "Business email",
                                border: OutlineInputBorder(),
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: FormBuilderTextField(
                              name: 'phone_number',
                              decoration: const InputDecoration(
                                hintText: "Phone number",
                                border: OutlineInputBorder(),
                              ),
                              keyboardType: TextInputType.phone,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: FormBuilderTextField(
                              name: 'alternative_phone_number',
                              decoration: const InputDecoration(
                                hintText: "Alternative phone number",
                                border: OutlineInputBorder(),
                              ),
                              keyboardType: TextInputType.phone,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: FormBuilderDropdown(
                              name: 'country',
                              items: [
                                'Ghana',
                                'Germany',
                                'United Kingdom',
                                'USA'
                              ]
                                  .map((val) => DropdownMenuItem(
                                      value: val, child: Text(val)))
                                  .toList(),
                              decoration: const InputDecoration(
                                  hintText: 'Country',
                                  border: OutlineInputBorder()),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: FormBuilderDropdown(
                              name: 'region',
                              items: ['Greater Accra', 'Ashanti', 'Central']
                                  .map((val) => DropdownMenuItem(
                                      value: val, child: Text(val)))
                                  .toList(),
                              decoration: const InputDecoration(
                                  hintText: 'Region',
                                  border: OutlineInputBorder()),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Languages spoken'),
                          Row(
                            children: [
                              Expanded(
                                child: FormBuilderCheckboxGroup(
                                  name: 'languages_spoken',
                                  options: const [
                                    FormBuilderFieldOption(value: 'English'),
                                    FormBuilderFieldOption(value: 'Twi'),
                                    FormBuilderFieldOption(value: 'Ga'),
                                    FormBuilderFieldOption(value: 'French'),
                                    FormBuilderFieldOption(value: 'Ewe'),
                                    FormBuilderFieldOption(value: 'Fante'),
                                  ],
                                  // decoration: InputDecoration(
                                  //   border: OutlineInputBorder(
                                  //     borderRadius: BorderRadius.circular(0),
                                  //   ),
                                  // ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Expanded(
                                child: FormBuilderTextField(
                                  name: 'location',
                                  decoration: const InputDecoration(
                                    hintText: "Location",
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          InkWell(
                            onTap: () => Navigator.pushNamed(
                                context, '/create_artisan_page2'),
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
                    ],
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
