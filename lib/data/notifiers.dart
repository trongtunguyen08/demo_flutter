//ValueNotifier: hold the data
//ValueListenableBuilder: listen to the data (you don't need setState)

import 'package:flutter/material.dart';

ValueNotifier<int> selectedPageNotifier = ValueNotifier(1);
ValueNotifier<bool> isDarkModeNotifier = ValueNotifier(false);
