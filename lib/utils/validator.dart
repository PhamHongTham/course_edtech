// class Validator {
//   Validator._();
//   static String? checkIsEmpty(value) {
//     if (value.isEmpty) {
//       return 'This field is required';
//     }
//     return null;
//   }

//   static String? checkEmailInValide(value) {
//     if (value.isEmpty) {
//       return 'This field is required';
//     }
//     if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
//       return 'Please enter a valid email address';
//     }
//     return null;
//   }

//   static String? checkPassword(value) {
//     if (value.isEmpty) {
//       return 'This field is required';
//     }
//     if (value.length < 8) {
//       return 'Sử dụng 8 ký tự trở lên cho mật khẩu của bạn';
//     }
//     if (!RegExp(r'[A-Za-z]').hasMatch(value) ||
//         !RegExp(r'[0-9]').hasMatch(value) ||
//         !RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
//       return 'Vui lòng chọn mật khẩu mạnh hơn. \nHãy thử kết hợp giữa chữ cái, chữ số và ký hiệu';
//     }
//     return null;
//   }

//   static String? confirmPassword(value, password) {
//     if (value.isEmpty) {
//       return 'This field is required';
//     }
//     if (value != password) {
//       return 'Không trùng khớp';
//     }
//     return null;
//   }
// }
class Validator {
  Validator._();

  static String? checkIsEmpty(value) {
    if (value.isEmpty) {
      return 'This field is required';
    }
    return null;
  }

  static String? checkEmailInValid(value) {
    final isEmptyError = checkIsEmpty(value);
    if (isEmptyError != null) {
      return isEmptyError;
    }
    if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  static String? checkPassword(value) {
    final isEmptyError = checkIsEmpty(value);
    if (isEmptyError != null) {
      return isEmptyError;
    }
    if (value.length < 8) {
      return 'Sử dụng 8 ký tự trở lên cho mật khẩu của bạn';
    }
    if (!RegExp(r'[A-Za-z]').hasMatch(value) ||
        !RegExp(r'[0-9]').hasMatch(value) ||
        !RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
      return 'Vui lòng chọn mật khẩu mạnh hơn. \nHãy thử kết hợp giữa chữ cái, chữ số và ký hiệu';
    }
    return null;
  }

  static String? confirmPassword(value, password) {
    final isEmptyError = checkIsEmpty(value);
    if (isEmptyError != null) {
      return isEmptyError;
    }
    if (value != password) {
      return 'Không trùng khớp';
    }
    return null;
  }
}
