import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void launchWebsite1() async {
  final Uri url = Uri.parse(
      'https://www.ncbi.nlm.nih.gov/books/NBK558911/#:~:text=These%20include%20bipolar%20disorder%2C%20cyclothymia,increase%20in%20morbidity%20and%20mortality.');
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Counldnt launch';
  }
}

void launchWebsite2() async {
  final Uri url = Uri.parse(
      'https://www.nimh.nih.gov/health/topics/anxiety-disorders#:~:text=Generalized%20anxiety%20disorder%20(GAD)%20usually,for%20months%2C%20if%20not%20years.');
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Counldnt launch';
  }
}

void launchWebsite3() async {
  final Uri url = Uri.parse(
      'https://www.mayoclinic.org/diseases-conditions/personality-disorders/symptoms-causes/syc-20354463');
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Counldnt launch';
  }
}

void launchWebsite4() async {
  final Uri url = Uri.parse('https://medlineplus.gov/psychoticdisorders.html');
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Counldnt launch';
  }
}
