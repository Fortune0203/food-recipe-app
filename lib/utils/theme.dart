import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff8e4c32),
      surfaceTint: Color(0xff8e4c32),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffdbce),
      onPrimaryContainer: Color(0xff71361d),
      secondary: Color(0xff77574b),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffdbce),
      onSecondaryContainer: Color(0xff5d4035),
      tertiary: Color(0xff695e30),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xfff1e3a8),
      onTertiaryContainer: Color(0xff50471a),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff231a16),
      onSurfaceVariant: Color(0xff53433e),
      outline: Color(0xff85736d),
      outlineVariant: Color(0xffd8c2bb),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff392e2a),
      inversePrimary: Color(0xffffb59a),
      primaryFixed: Color(0xffffdbce),
      onPrimaryFixed: Color(0xff370e00),
      primaryFixedDim: Color(0xffffb59a),
      onPrimaryFixedVariant: Color(0xff71361d),
      secondaryFixed: Color(0xffffdbce),
      onSecondaryFixed: Color(0xff2c160d),
      secondaryFixedDim: Color(0xffe7beaf),
      onSecondaryFixedVariant: Color(0xff5d4035),
      tertiaryFixed: Color(0xfff1e3a8),
      onTertiaryFixed: Color(0xff211b00),
      tertiaryFixedDim: Color(0xffd4c78e),
      onTertiaryFixedVariant: Color(0xff50471a),
      surfaceDim: Color(0xffe8d6d1),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1ec),
      surfaceContainer: Color(0xfffceae4),
      surfaceContainerHigh: Color(0xfff7e4df),
      surfaceContainerHighest: Color(0xfff1dfd9),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff5c260e),
      surfaceTint: Color(0xff8e4c32),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffa05b3f),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff4a3026),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff876559),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff3e360b),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff786d3d),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff170f0c),
      onSurfaceVariant: Color(0xff41332e),
      outline: Color(0xff5f4f49),
      outlineVariant: Color(0xff7b6963),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff392e2a),
      inversePrimary: Color(0xffffb59a),
      primaryFixed: Color(0xffa05b3f),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff83432a),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff876559),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff6c4e42),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff786d3d),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff5e5527),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffd4c3be),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff1ec),
      surfaceContainer: Color(0xfff7e4df),
      surfaceContainerHigh: Color(0xffebd9d3),
      surfaceContainerHighest: Color(0xffdfcec8),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff4f1c06),
      surfaceTint: Color(0xff8e4c32),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff74381f),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff3f261c),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff604237),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff342c02),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff52491c),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff362924),
      outlineVariant: Color(0xff554640),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff392e2a),
      inversePrimary: Color(0xffffb59a),
      primaryFixed: Color(0xff74381f),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff58220b),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff604237),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff462c22),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff52491c),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff3b3207),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc6b5b0),
      surfaceBright: Color(0xfffff8f6),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffffede7),
      surfaceContainer: Color(0xfff1dfd9),
      surfaceContainerHigh: Color(0xffe2d1cb),
      surfaceContainerHighest: Color(0xffd4c3be),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb59a),
      surfaceTint: Color(0xffffb59a),
      onPrimary: Color(0xff552009),
      primaryContainer: Color(0xff71361d),
      onPrimaryContainer: Color(0xffffdbce),
      secondary: Color(0xffe7beaf),
      onSecondary: Color(0xff442a20),
      secondaryContainer: Color(0xff5d4035),
      onSecondaryContainer: Color(0xffffdbce),
      tertiary: Color(0xffd4c78e),
      onTertiary: Color(0xff383005),
      tertiaryContainer: Color(0xff50471a),
      onTertiaryContainer: Color(0xfff1e3a8),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff1a110e),
      onSurface: Color(0xfff1dfd9),
      onSurfaceVariant: Color(0xffd8c2bb),
      outline: Color(0xffa08d86),
      outlineVariant: Color(0xff53433e),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff1dfd9),
      inversePrimary: Color(0xff8e4c32),
      primaryFixed: Color(0xffffdbce),
      onPrimaryFixed: Color(0xff370e00),
      primaryFixedDim: Color(0xffffb59a),
      onPrimaryFixedVariant: Color(0xff71361d),
      secondaryFixed: Color(0xffffdbce),
      onSecondaryFixed: Color(0xff2c160d),
      secondaryFixedDim: Color(0xffe7beaf),
      onSecondaryFixedVariant: Color(0xff5d4035),
      tertiaryFixed: Color(0xfff1e3a8),
      onTertiaryFixed: Color(0xff211b00),
      tertiaryFixedDim: Color(0xffd4c78e),
      onTertiaryFixedVariant: Color(0xff50471a),
      surfaceDim: Color(0xff1a110e),
      surfaceBright: Color(0xff423733),
      surfaceContainerLowest: Color(0xff140c09),
      surfaceContainerLow: Color(0xff231a16),
      surfaceContainer: Color(0xff271e1a),
      surfaceContainerHigh: Color(0xff322824),
      surfaceContainerHighest: Color(0xff3d322f),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffd3c3),
      surfaceTint: Color(0xffffb59a),
      onPrimary: Color(0xff471602),
      primaryContainer: Color(0xffca7d5f),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffed3c4),
      onSecondary: Color(0xff382016),
      secondaryContainer: Color(0xffad897b),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffebdca2),
      onTertiary: Color(0xff2d2500),
      tertiaryContainer: Color(0xff9d915d),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff1a110e),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffeed8d0),
      outline: Color(0xffc2aea7),
      outlineVariant: Color(0xffa08c86),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff1dfd9),
      inversePrimary: Color(0xff73371e),
      primaryFixed: Color(0xffffdbce),
      onPrimaryFixed: Color(0xff260700),
      primaryFixedDim: Color(0xffffb59a),
      onPrimaryFixedVariant: Color(0xff5c260e),
      secondaryFixed: Color(0xffffdbce),
      onSecondaryFixed: Color(0xff200c05),
      secondaryFixedDim: Color(0xffe7beaf),
      onSecondaryFixedVariant: Color(0xff4a3026),
      tertiaryFixed: Color(0xfff1e3a8),
      onTertiaryFixed: Color(0xff151100),
      tertiaryFixedDim: Color(0xffd4c78e),
      onTertiaryFixedVariant: Color(0xff3e360b),
      surfaceDim: Color(0xff1a110e),
      surfaceBright: Color(0xff4d423e),
      surfaceContainerLowest: Color(0xff0d0604),
      surfaceContainerLow: Color(0xff251c18),
      surfaceContainer: Color(0xff302622),
      surfaceContainerHigh: Color(0xff3b302d),
      surfaceContainerHighest: Color(0xff463b37),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffece6),
      surfaceTint: Color(0xffffb59a),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffb092),
      onPrimaryContainer: Color(0xff1c0400),
      secondary: Color(0xffffece6),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffe3baab),
      onSecondaryContainer: Color(0xff180602),
      tertiary: Color(0xfffff0b5),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffd0c38a),
      onTertiaryContainer: Color(0xff0f0b00),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff1a110e),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffffece6),
      outlineVariant: Color(0xffd4beb7),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff1dfd9),
      inversePrimary: Color(0xff73371e),
      primaryFixed: Color(0xffffdbce),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffb59a),
      onPrimaryFixedVariant: Color(0xff260700),
      secondaryFixed: Color(0xffffdbce),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffe7beaf),
      onSecondaryFixedVariant: Color(0xff200c05),
      tertiaryFixed: Color(0xfff1e3a8),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffd4c78e),
      onTertiaryFixedVariant: Color(0xff151100),
      surfaceDim: Color(0xff1a110e),
      surfaceBright: Color(0xff5a4d49),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff271e1a),
      surfaceContainer: Color(0xff392e2a),
      surfaceContainerHigh: Color(0xff443935),
      surfaceContainerHighest: Color(0xff504440),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
