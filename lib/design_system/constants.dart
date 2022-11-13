import 'dart:io';

const kPadding = 20.0;
const kSmallPadding = 10.0;
const kRadius = 20.0;
const kPalletteRadius = 22.0;
const kBlur = 18.0;
const kDesktopAppBarHeight = 40.0;

const kTabletBreakpoint = 700.0;
const kDesktopBreakpoint = 1440.0;

const kTransitionDuration = Duration(milliseconds: 350);

const kExerciseAssetLocation = 'public/exercises/';

bool kIsDesktop = Platform.isLinux || Platform.isMacOS || Platform.isWindows;
