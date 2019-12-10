class Student {
  String name;
  int score;

  Student(this.name, this.score);
}
// Challenge  1 - Create 3 Students
// 1. Ram - 87
// 2. Shyam - 80
// 3. Ghanshyam - 91

// Put these students in a list called 'students'

// Challenge 2 - Print out the student name and score for all students

// Challenge 3 - Find student with Maximum score and print his name and score

// Challenge 4 - Sort the students based on their scores

void main() {
  Student first = Student('Ram', 87);
  Student second = Student('Shyam', 80);
  Student third = Student('Ghanshyam', 91);

  List<Student> students = [first, second, third];
  for (Student item in students) {
    print("${item.name} got ${item.score}");
  }
  Student best = students.reduce(bestStudent);
  print("${best.name} is the best student with a score of ${best.score}");

  students.sort(compareStudentScore);
  for (Student item in students) {
    print("${item.name} got ${item.score}");
  }
}

Student bestStudent(Student one, Student two) {
  if (one.score < two.score) {
    return two;
  } else {
    return one;
  }
}

int compareStudentScore(Student student1, Student student2) {
  if (student1.score < student2.score) {
    return -1;
  } else if (student1.score == student2.score) {
    return 0;
  } else {
    return 1;
  }
}
