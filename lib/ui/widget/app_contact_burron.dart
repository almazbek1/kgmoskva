import 'package:mobi_kg/const/app_fonts.dart';
import 'package:mobi_kg/const/app_images.dart';
import 'package:mobi_kg/data/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class AppContactButton extends StatefulWidget {
  const AppContactButton(
      {Key? key, required this.isWhatsApp, required this.number, this.user})
      : super(key: key);
  final bool isWhatsApp;
  final String number;
  final UserModel? user;

  @override
  State<AppContactButton> createState() => _AppContactButtonState();
}

class _AppContactButtonState extends State<AppContactButton> {
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  void scaMessege() {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("whatsappNoInstalled".tr)));
  }

  Future<void> _openWhatsapp(
      BuildContext context, String whatsAppNumber) async {
    if (!await launchUrl(
      Uri(scheme: 'https', host: 'wa.me', path: whatsAppNumber),
      mode: LaunchMode.externalApplication,
    )) {
      scaMessege();
    }
    /*final email = await AuthRepo().getUser();
    var whatsappAndroid =
        "whatsapp://send?phone=$whatsAppNumber&text=Здравствуйте, я хотел(а) пополнить свой баланс.\nEmail: ${email?.email??''}";
    var whatsappIos =
        "https://wa.me/$whatsAppNumber?text=Здравствуйте, я хотел(а) пополнить свой баланс.\nEmail: ${email?.email??''}";
    if (Platform.isIOS) {
      // for iOS phone only
      if (!await launchUrl(Uri(scheme: whatsappIos))) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("whatsappNoInstalled".tr)));
      }
    } else {
      // android , web
      if (!await launchUrl(Uri.parse(whatsappAndroid))) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("whatsappNoInstalled".tr)));
      }
    }*/
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      child: InkWell(
        onTap: () {
          widget.isWhatsApp
              ? _openWhatsapp(context, widget.number)
              : _makePhoneCall(widget.number);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.isWhatsApp
                ? Image.asset(
                    AppImages.whatsapp,
                    width: 20,
                    height: 20,
                  )
                : const Icon(
                    Icons.phone,
                    color: Colors.green,
                  ),
            const SizedBox(
              width: 10,
            ),
            Text(widget.number,
                style: AppFonts.w500s16.copyWith(
                    color: Colors.green, decoration: TextDecoration.underline)),
          ],
        ),
      ),
    );
  }
}
