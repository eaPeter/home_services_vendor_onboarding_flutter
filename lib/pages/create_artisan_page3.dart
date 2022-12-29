import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CreateArtisanPage3 extends StatelessWidget {
  const CreateArtisanPage3({super.key});

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
                      onTap: () => Navigator.popAndPushNamed(
                          context, '/create_artisan_page2'),
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
                FormBuilder(
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: FormBuilderDropdown(
                              name: 'payment_type',
                              items: ['Momo', 'Bank']
                                  .map((val) => DropdownMenuItem(
                                      value: val, child: Text(val)))
                                  .toList(),
                              decoration: const InputDecoration(
                                  hintText: 'Payment Type',
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
                              name: 'account_name',
                              decoration: const InputDecoration(
                                hintText: "Account Name",
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
                              name: 'account_number',
                              decoration: const InputDecoration(
                                hintText: "Account number",
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
                              name: 'bank_branch',
                              decoration: const InputDecoration(
                                hintText: "Bank Branch",
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
                              name: 'billing_address',
                              decoration: const InputDecoration(
                                hintText: "Billing Address",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                      InkWell(
                        onTap: () => Navigator.pushNamed(
                            context, '/create_artisan_page3'),
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.red,
                          ),
                          child: Text(
                            'Complete',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
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
