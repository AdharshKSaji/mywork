import 'dart:developer';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:mywork/core/constants/colorconstants.dart';
import 'package:mywork/core/constants/stringconstants.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSectionController extends ChangeNotifier {
  bool submittingData = false;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey();

  Future<void> submitForm(BuildContext context) async {
    if (formKey.currentState?.validate() ?? false) {
      submittingData = true;
      notifyListeners();
      try {
        Uri uri = Uri.parse(contactFormLink);

        uri = Uri(
          scheme: uri.scheme,
          host: uri.host,
          path: uri.path,
          query: uri.query,
          queryParameters: {
            contactFormNameElementId: nameController.text,
            contactFormEmailElementId: emailController.text,
            contactFormMessageElementId: messageController.text,
          },
        );
        launchUrl(uri);
        clearTextField();
        
      } on Exception catch (e) {
        log(e.toString());
       
      }
      submittingData = false;
      notifyListeners();
    }
  }

  void clearTextField() {
    nameController.clear();
    emailController.clear();
    messageController.clear();
  }

  void showSuccessDialog(BuildContext context) {
    showAdaptiveDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'Your contact details have been submitted successfully. You will be contacted shortly.',
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: ColorConstants.primaryWhite),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void showErrorSnackbar(context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Something went wrong. Details not submitted!'),
      ),
    );
  }

  String? nameValidator(String? value) {
    if (value != null && value.length >= 3) {
      return null;
    } else {
      return 'Enter valid name!';
    }
  }

  String? emailValidator(String? value) {
    if (EmailValidator.validate(value ?? '')) {
      return null;
    } else {
      return 'Enter valid email address!';
    }
  }

  String? messageValidator(String? value) {
    if (value != null && value.isNotEmpty) {
      return null;
    } else {
      return 'Enter valid message!';
    }
  }
}