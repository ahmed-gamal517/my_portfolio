import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';
import 'package:my_portofolio/core/widgets/glass_container.dart';
import 'package:my_portofolio/core/widgets/gradient_button.dart';
import 'package:my_portofolio/features/home/presentation/widgets/contact/contact_text_field.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactForm extends StatefulWidget {
  final bool isDark;

  const ContactForm({super.key, required this.isDark});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  static const String _contactEmail = 'ahmedgamal5179@gmail.com';

  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _subjectController = TextEditingController();
  final _messageController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _subjectController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  Future<void> _sendEmail() async {
    if (!(_formKey.currentState?.validate() ?? false)) return;

    final name = _nameController.text.trim();
    final email = _emailController.text.trim();
    final subject = _subjectController.text.trim().isNotEmpty
        ? _subjectController.text.trim()
        : 'Opportunity from Portfolio';
    final message = _messageController.text.trim();

    final mailUri = Uri(
      scheme: 'mailto',
      path: _contactEmail,
      queryParameters: {
        'subject': subject,
        'body': 'Sender: $name\nEmail: $email\n\n$message',
      },
    );

    if (await canLaunchUrl(mailUri)) {
      await launchUrl(mailUri);
    } else if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Could not launch email app. Copied email to clipboard!'),
          backgroundColor: AppColors.cyan,
        ),
      );
      Clipboard.setData(const ClipboardData(text: _contactEmail));
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDark = widget.isDark;

    return GlassContainer(
      padding: const EdgeInsets.all(28),
      borderRadius: 20,
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Send a Direct Message',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                fontSize: 20,
                letterSpacing: -0.2,
                color: isDark
                    ? AppColors.darkTextPrimary
                    : AppColors.lightTextPrimary,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              'Fill out the details below and it will open directly in your mail client.',
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: isDark
                    ? AppColors.darkTextSecondary
                    : AppColors.lightTextSecondary,
              ),
            ),
            const SizedBox(height: 24),
            ContactTextField(
              controller: _nameController,
              label: 'Your Name',
              hint: 'e.g. Sarah Jenkins',
              icon: Icons.person_outline_rounded,
              isDark: isDark,
              validator: (v) =>
                  (v == null || v.trim().isEmpty) ? 'Please enter your name' : null,
            ),
            const SizedBox(height: 16),
            ContactTextField(
              controller: _emailController,
              label: 'Your Email',
              hint: 'e.g. sarah@company.com',
              icon: Icons.mail_outline_rounded,
              keyboardType: TextInputType.emailAddress,
              isDark: isDark,
              validator: (v) {
                if (v == null || v.trim().isEmpty) {
                  return 'Please enter your email';
                }
                if (!v.contains('@')) return 'Enter a valid email';
                return null;
              },
            ),
            const SizedBox(height: 16),
            ContactTextField(
              controller: _subjectController,
              label: 'Subject',
              hint: 'e.g. Flutter Developer Opportunity',
              icon: Icons.subject_rounded,
              isDark: isDark,
            ),
            const SizedBox(height: 16),
            ContactTextField(
              controller: _messageController,
              label: 'Message',
              hint: 'Tell me about your project, timeline, or position...',
              icon: Icons.chat_bubble_outline_rounded,
              maxLines: 4,
              isDark: isDark,
              validator: (v) =>
                  (v == null || v.trim().isEmpty) ? 'Please enter a message' : null,
            ),
            const SizedBox(height: 24),
            GradientButton(
              text: 'Send Message',
              width: double.infinity,
              height: 48,
              variant: ButtonVariant.primary,
              icon: const Icon(
                Icons.send_rounded,
                size: 16,
                color: Color(0xFF090D16),
              ),
              onPressed: _sendEmail,
            ),
          ],
        ),
      ),
    );
  }
}
