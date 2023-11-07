import 'package:flutter/material.dart';
import 'package:study_flutter/apps/toonflix.dart';

import 'services/api_service.dart';

void main() {
  ApiService().getTodaysToons();
  runApp(const Toonflix());
}
