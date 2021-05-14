class ContactForm {
  String name;
  String email;
  String mobileNo;
  String houseNoStreetName;
  String districtStateName;
  String pinCode;
  String feedback;

  ContactForm(this.name, this.email, this.mobileNo,
      this.houseNoStreetName, this.districtStateName,
      this.pinCode, this.feedback);

  factory ContactForm.fromJson(dynamic json) {
    return ContactForm(
        "${json['name']}", "${json['email']}", "${json['mobileNo']}",
        "${json['houseNoStreetName']}", "${json['districtStateName']}",
        "${json['pinCode']}", "${json['feedback']}"
    );
  }

  // Method to make GET parameters.
  Map toJson() => {
    'name': name,
    'email': email,
    'mobileNo': mobileNo,
    'houseNoStreetName': houseNoStreetName,
    'districtStateName': districtStateName,
    'pinCode': pinCode,
    'feedback': feedback
  };
}