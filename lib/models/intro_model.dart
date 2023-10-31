// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:course_edtech/gen/assets.gen.dart';

class IntroModel {
  String? image;
  String? title;
  String? subTitle;
  String? textButton;
  IntroModel();
}

List<IntroModel> listIntroModels = [
  IntroModel()
    ..image = Assets.images.intro1.path
    ..title = 'Learn anytime\nand anywhere'
    ..subTitle =
        'Quarantine is the perfect time to spend your\nday learning something new, from anywhere!'
    ..textButton = 'Next',
  IntroModel()
    ..image = Assets.images.intro2.path
    ..title = 'Find a cours\nfor you'
    ..subTitle =
        'Quarantine is the perfect time to spend your\nday learning something new, from anywhere!'
    ..textButton = 'Next',
  IntroModel()
    ..image = Assets.images.intro3.path
    ..title = '\nImprove your skills'
    ..subTitle =
        'Quarantine is the perfect time to spend your\nday learning something new, from anywhere!'
    ..textButton = 'Let\'s Start',
];
