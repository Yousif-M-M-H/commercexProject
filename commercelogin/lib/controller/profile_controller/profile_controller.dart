import 'package:commercelogin/models/profile_model/profile_model.dart';
import 'package:flutter/material.dart';

class ProfileController {
  List<ProfileModel> profileList = [
    ProfileModel(leadingIcon: Icons.account_circle_outlined, title: 'My Account'),
    ProfileModel(leadingIcon: Icons.shopping_bag_outlined, title: 'My Orders'),
    ProfileModel(leadingIcon: Icons.language, title: 'Language Settings'),
    ProfileModel(leadingIcon: Icons.location_city_sharp, title: 'Shipping Address'),
    ProfileModel(leadingIcon: Icons.card_membership_rounded, title: 'My Cards'),
    ProfileModel(leadingIcon: Icons.settings, title: 'Settings'),
    ProfileModel(leadingIcon: Icons.privacy_tip_outlined, title: 'Privacy Policy'),
    ProfileModel(leadingIcon: Icons.help_center_outlined, title: 'FAQ'),
  ];
}