import 'package:intl/intl.dart';
import 'package:reactive_forms/reactive_forms.dart';

class DecimalValueAccessor extends ControlValueAccessor<double, String> {
  final NumberFormat _numberFormat;

  DecimalValueAccessor({String locale = 'fr_FR', int decimalDigits = 2})
      : _numberFormat = NumberFormat.decimalPattern(locale)
          ..minimumFractionDigits = decimalDigits
          ..maximumFractionDigits = decimalDigits;

  @override
  String modelToViewValue(double? modelValue) {
    if (modelValue == null) {
      return '';
    }
    return _numberFormat.format(modelValue);
  }

  @override
  double? viewToModelValue(String? viewValue) {
    if (viewValue == null || viewValue.isEmpty) {
      return null;
    }
    try {
      return _numberFormat.parse(viewValue) as double;
    } catch (e) {
      return null;
    }
  }
}
