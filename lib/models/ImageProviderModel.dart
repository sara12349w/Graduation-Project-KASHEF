// TODO Implement this library.

import 'package:flutter/material.dart';

class ImageProviderModel with ChangeNotifier {
  String? _imagePath; // المتغير لتخزين مسار الصورة
  String? _selectedArea; // المتغير لتخزين المنطقة المختارة
  String? _selectedGasType; // المتغير لتخزين نوع الغاز المختار

  // إرجاع مسار الصورة
  String? get imagePath => _imagePath;

  // إرجاع المنطقة المختارة
  String? get selectedArea => _selectedArea;

  // إرجاع نوع الغاز المختار
  String? get selectedGasType => _selectedGasType;

  // تحديث مسار الصورة وإشعار المستمعين
  void setImagePath(String path) {
    _imagePath = path;
    notifyListeners(); // تحديث المستمعين للتغييرات
  }

  // تحديث المنطقة المختارة وإشعار المستمعين
  void setSelectedArea(String area) {
    _selectedArea = area;
    notifyListeners();
  }

  // تحديث نوع الغاز المختار وإشعار المستمعين
  void setSelectedGasType(String gasType) {
    _selectedGasType = gasType;
    notifyListeners();
  }
}
