import 'package:crm_softli/config/services/log/log_service.dart';
import 'package:crm_softli/infrastructure/models/log_model.dart';
import 'package:flutter/material.dart';

class LogInProvider extends ChangeNotifier {
  final LogModel logModel;

  final LogService logService = LogService();

  LogInProvider({required this.logModel});

  Future<void> logIn() async {
    logService.login(logModel);
  }
}
