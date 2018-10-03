import 'package:flutter/material.dart';

class Colors {

  const Colors();

  static const Color appBarTitle = const Color(0xFFFFFFFF);
  static const Color appBarIconColor = const Color(0xFFFFFFFF);
  static const Color appBarDetailBackground = const Color(0x00FFFFFF);
  //static const Color appBarGradientStart = const Color(0xFF3383FC);
  //static const Color appBarGradientEnd = const Color(0xFF00C6FF);

  //static const Color planetCard = const Color(0xFF434273);
  static const Color dutyCard = const Color(0xFFFFFFFFF);
  //static const Color planetListBackground = const Color(0xFF3E3963);
  static const Color mainBackground = const Color(0xFF736AB7);
  static const Color dutyTitle = const Color(0xFFB41218);
  static const Color dutyLocation = const Color(0x66B41218);
  static const Color planetDistance = const Color(0x66B41218);

  //light theme
  static const Color whiteSmoke = const Color(0xFFF4F4F4);
  static const Color platinum = const Color(0xFFE6E6E9);
  static const Color spanishGrey = const Color(0xFF9999A1);
  static const Color graniteGrey = const Color(0xFF66666E);
  static const Color black = const Color(0xFF000000);

  //forest
  static const Color deer = const Color(0xFFB38A58);
  static const Color spanishBistro = const Color(0xFF6F732F);
  static const Color rifleGreen = const Color(0xFF3C5233);
  static const Color greenLeatherJacket = const Color(0xFF264027);
  static const Color darkJungleGreen = const Color(0xFF0D1F22);

  //pastel
  static const Color vividTangerine = const Color(0xFFF79D84);
  static const Color rajah = const Color(0xFFFAC05E);
  static const Color maximumBlue = const Color(0xFF3FA7D6);
  static const Color oceanGreen = const Color(0xFF59CD90);
  static const Color sunsetOrange = const Color(0xFFEE6352);

  //blue
  static const Color paleCornflowerBLue = const Color(0xFFA7CCED);
  static const Color blueJeans = const Color(0xFF63ADF2);
  static const Color airSuperiorityBlue = const Color(0xFF82A0BC);
  static const Color blackCoral = const Color(0xFF545E75);
  static const Color independenceBlue = const Color(0xFF304D6D);


  //red cross
  static const Color cornellRed = const Color(0xFFB41218);
  static const Color geraniumLake = const Color(0xFFE8282C);
  static const Color vividRed = const Color(0xFFF40D1A);
  static const Color prune = const Color(0xFF6C0E23);
}

class Dimens {
  const Dimens();

  static const planetWidth = 100.0;
  static const planetHeight = 100.0;
}

class TextStyles {

  const TextStyles();

  static const TextStyle upcomingDutiesCardTitle = const TextStyle(
      color: Colors.prune,
      fontWeight: FontWeight.w400,
      fontSize: 15.0,
  );

  static const TextStyle upcomingDutiesPanelTitle = const TextStyle(
      color: Colors.blackCoral,
      fontFamily: 'Dunant',
      fontWeight: FontWeight.w400,
      fontSize: 20.0
  );

  static const TextStyle upcomingDutiesPanelSubtitle = const TextStyle(
      color: Colors.blackCoral,
      fontFamily: 'Dunant',
      fontWeight: FontWeight.w300,
      fontSize: 10.0
  );





  static const TextStyle appBarTitle = const TextStyle(
      color: Colors.appBarTitle,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      fontSize: 36.0
  );

  static const TextStyle dutyTitle = const TextStyle(
      color: Colors.dutyTitle,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      fontSize: 24.0
  );



  static const TextStyle dutyLocation = const TextStyle(
      color: Colors.dutyLocation,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w300,
      fontSize: 14.0
  );

  static const TextStyle planetDistance = const TextStyle(
      color: Colors.planetDistance,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w300,
      fontSize: 12.0
  );


}
