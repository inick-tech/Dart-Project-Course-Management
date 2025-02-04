mixin Courses {
  List<String> _courses = [];

  List<String> get courses => _courses;

  set courses(List<String> newCourses) {
    _courses = newCourses;
  }

  void addCourse(String course) {
    _courses.add(course);
  }

  void removeCourse(String course) {
    _courses.remove(course);
  }
}

class Student extends Person with Courses {
  String _studentId;
  String _major;

  Student(this._studentId, this._major, String name, String idNumber, String phoneNumber, String address)
      : super(name, idNumber, phoneNumber, address);

  Student.English(String name, String idNumber, String phoneNumber, String address)
      : _studentId = 'N/A',
        _major = 'English literature',
        super(name, idNumber, phoneNumber, address);

  @override
  void printInfo() {
    print('Student: $_name, ID: $_idNumber, Major: $_major');
  }

  @override
  String performAction() {
    return 'Studying';
  }

  String get studentId => _studentId;
  String get major => _major;
}

class Teacher extends Person with Courses {
  Certificate _degree;
  double _salary;

  Teacher(String name, String idNumber, String phoneNumber, String address, this._degree, this._salary)
      : super(name, idNumber, phoneNumber, address);

  @override
  void printInfo() {
    print('Teacher: $_name, ID: $_idNumber, Degree: $_degree');
  }

  @override
  String performAction() {
    return 'Teaching';
  }

  Certificate get degree => _degree;
  double get salary => _salary;
}
