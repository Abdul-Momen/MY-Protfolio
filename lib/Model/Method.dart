import 'package:url_launcher/url_launcher.dart';
import 'package:potrtfolio/Data/Contents.dart';

class Method {
  launchURL(String link) async {
    var url = link;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchCaller() async {
    const url = "tel:" + kPhoneNumber;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchEmail() async {
    if (await canLaunch("mailto:" + kMailAddress)) {
      await launch("mailto:" + kMailAddress);
    } else {
      throw 'Could not launch';
    }
  }
}
