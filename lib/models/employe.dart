class EmployeeModel{

  final String id;
  final String employeeName;
  final String employeeSalary;
  final String employeeAge;
  final String profileImage;

  const EmployeeModel({
    required this.id,
    required this.employeeName,
    required this.employeeSalary,
    required this.employeeAge,
    required this.profileImage
  });

  factory EmployeeModel.fromJson(Map<String, dynamic> json) => EmployeeModel(
    id: json['id'], 
    employeeName: json['employeeName'],
    employeeSalary: json['employeeSalary'],
    employeeAge: json['employeeAge'], 
    profileImage: json['profileImage']);
}