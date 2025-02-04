import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/custom_button.dart';

class ContactMeSection extends StatelessWidget {
  const ContactMeSection({super.key});

  // todo: Add controllers to the text fields

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 900,
      width: double.maxFinite,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              // zenDots,
              'Contact me',
              style: GoogleFonts.sora(
                fontWeight: FontWeight.bold,
                fontSize: 90,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: 600,
              child: Column(
                children: [
                  // name
                  Row(
                    children: [
                      const SizedBox(width: 20),
                      Text(
                        'Full name *',
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Enter your full name ...',
                        hintStyle: const TextStyle(fontWeight: FontWeight.w100),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        contentPadding:
                        const EdgeInsets.only(left: 20)),
                  ),
                  const SizedBox(height: 18),

                  // email
                  Row(
                    children: [
                      const SizedBox(width: 20),
                      Text(
                        'Email *',
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter your email ...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      contentPadding: const EdgeInsets.only(left: 20),
                    ),
                  ),
                  const SizedBox(height: 18),

                  // msg
                   Row(
                    children: [
                      const SizedBox(width: 20),
                      Text(
                        'Message *',
                        style: GoogleFonts.sora(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  TextFormField(
                    maxLines: 5,
                    decoration: InputDecoration(
                      hintText: 'Enter your message ...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      contentPadding:
                      const EdgeInsets.only(left: 20, top: 25),
                    ),
                  ),
                  const SizedBox(height: 18),
                  CustomButton(buttonName: 'Submit', onPressed: () {})
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
