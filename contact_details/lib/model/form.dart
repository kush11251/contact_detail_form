class ContactForm {
  String name;
  String email;
  String mobileNo;
  String houseNo;
  String streetName;
  String district;
  String stateName;
  String pinCode;
  String feedback;

  ContactForm(this.name, this.email, this.mobileNo,
      this.houseNo, this.streetName, this.district,
      this.stateName, this.pinCode, this.feedback);

  factory ContactForm.fromJson(dynamic json) {
    return ContactForm(
        "${json['name']}", "${json['email']}", "${json['mobileNo']}",
        "${json['houseNo']}", "${json['streetName']}", "${json['district']}",
        "${json['stateName']}", "${json['pinCode']}", "${json['feedback']}"
    );
  }

  // Method to make GET parameters.
  Map toJson() => {
    'name': name,
    'email': email,
    'mobileNo': mobileNo,
    'houseNo': houseNo,
    'streetName': streetName,
    'district': district,
    'stateName': stateName,
    'pinCode': pinCode,
    'feedback': feedback
  };
}