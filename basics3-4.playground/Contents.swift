
/*
var maxWorkoutsTuple = (pushup: 40, pullup: 30, squats: 130)
print("Max pushups: \(maxWorkoutsTuple.pushup), max pullups: \(maxWorkoutsTuple.pullup), max squats: \(maxWorkoutsTuple.squats)")


print("max push \(maxWorkoutsTuple.0)")
print("max pull \(maxWorkoutsTuple.1)")
print("max squat \(maxWorkoutsTuple.2)")


var defaultMaxWorkoutsTuple = (pushup: 35, pullup: 20, squats: 90)

var swapTuple = maxWorkoutsTuple

var differences = maxWorkoutsTuple
differences.0 -= defaultMaxWorkoutsTuple.0
differences.1 -= defaultMaxWorkoutsTuple.1
differences.2 -= defaultMaxWorkoutsTuple.2

print(differences)
*/

let string1  = "20"
let string2 = "20sacas"
let string3  = "30"
let string4  = "20aaa"
let string5 = "20ss"

var sum = 0

if let firstElement = Int(string1) {
    sum += firstElement
}
if let firstElement = Int(string2) {
    sum += firstElement
}
if let firstElement = Int(string3) {
    sum += firstElement
}
if let firstElement = Int(string4) {
    sum += firstElement
}
if let firstElement = Int(string5) {
    sum += firstElement
}
sum
print(sum)
sum = 0

if Int(string1) != nil {
    sum += Int(string1)!
}
if Int(string2) != nil {
    sum += Int(string2)!
}
if Int(string3) != nil {
    sum += Int(string3)!
}
if Int(string4) != nil {
    sum += Int(string4)!
}
if Int(string5) != nil {
    sum += Int(string5)!
}
sum
print(sum)


var message1 = (statusCose: 310, message: "SomeText", errorMessage: "ErrorToMuch")
var message2 = (statusCose: 110, message: "SomeText", errorMessage: "ErrorNotEnough")
var message3 = (statusCose: 202, message: "Work Properly", errorMessage: "")
var message4 = (statusCose: 266, message: "Work Properly", errorMessage: "")
var message5 = (statusCose: 310, message: "SomeText", errorMessage: "ErrorToMuch")

var messgaesTuple = [message1,message2,message3,message4,message5]

if message1.statusCose > 200 && message1.statusCose <= 300 {
    print(message1.message)
} else {
    print(message1.errorMessage)
}

for i in messgaesTuple {
    if i.statusCose > 200 && i.statusCose <= 300 {
        print("For request with status code \(i.statusCose) message is \(i.message)")
    } else {
        print("For request with status code \(i.statusCose) message is \(i.errorMessage)")
    }
}


var message6: (String? , String?) = ( message: "SomeText", errorMessage: nil)
var message7: (String? , String?) = ( message: nil, errorMessage: nil)
var message8: (String? , String?) = ( message: nil, errorMessage: "dsvsdv")
var message9: (String? , String?) =  (message: "Work Properly", errorMessage: nil)
var message10: (String? , String?) = (message: nil, errorMessage: "ErrorToMuch")

if message6.0 != nil {
    print ("Message from server: \(message6.0!)")
} else if message6.1 != nil {
    print("Error: text \(message6.1!)")
} else {
    print ("No data in message")
}

if message7.0 != nil {
    print ("Message from server: \(message7.0!)")
} else if message7.1 != nil {
    print("Error: text \(message7.1!)")
} else {
    print ("No data in message")
}


if message8.0 != nil {
    print ("Message from server: \(message8.0!)")
} else if message8.1 != nil {
    print("Error: text \(message8.1!)")
} else {
    print ("No data in message")
}

if message9.0 != nil {
    print ("Message from server: \(message9.0!)")
} else if message9.1 != nil {
    print("Error: text \(message9.1!)")
} else {
    print ("No data in message")
}

if message10.0 != nil {
    print ("Message from server: \(message10.0!)")
} else if message10.1 != nil {
    print("Error: text \(message10.1!)")
} else {
    print ("No data in message")
}


var student1 : (name: String? ,carNumber: String? ,gradeForCW: Int?)
var student2 : (name: String? ,carNumber: String? ,gradeForCW: Int?)
var student3 : (name: String? ,carNumber: String? ,gradeForCW: Int?)
var student4 : (name: String? ,carNumber: String? ,gradeForCW: Int?)
var student5 : (name: String? ,carNumber: String? ,gradeForCW: Int?)

student1.name = "Greben"
student2.name = "Pisos"
student3.name = "Xyecoc"
student4.name = "Petyx"
student5.name = "Sherbet"

student1.carNumber = "AZ3113"
student3.carNumber = "S0SAL1T1"

student1.gradeForCW = 6
student3.gradeForCW = 10
student5.gradeForCW = 5


if student1.name != nil && student1.carNumber != nil && student1.gradeForCW != nil {
    print("Student name: \(student1.name!), student car number: \(student1.carNumber!),grade for last Control Work(If not appsent) \(student1.gradeForCW!) ")
} else if student1.name != nil && student1.carNumber == nil && student1.gradeForCW != nil {
    print("Student name: \(student1.name!), student doesn't have a car,grade for last Control Work(If not appsent) \(student1.gradeForCW!) ")
} else if student1.name != nil && student1.carNumber == nil && student1.gradeForCW == nil {
    print("Student name: \(student1.name!), student doesn't have a car, student was appsent at last Control Work")
} else if student1.name != nil && student1.carNumber != nil && student1.gradeForCW == nil {
print("Student name: \(student1.name!), student car number: \(student1.carNumber!), student was appsent at last Control Work")
} else {
    print("Error: Check Student Card")
}


if student2.name != nil && student2.carNumber != nil && student2.gradeForCW != nil {
    print("Student name: \(student2.name!), student car number: \(student2.carNumber!),grade for last Control Work(If not appsent) \(student2.gradeForCW!) ")
} else if student2.name != nil && student2.carNumber == nil && student2.gradeForCW != nil {
    print("Student name: \(student2.name!), student doesn't have a car,grade for last Control Work(If not appsent) \(student2.gradeForCW!) ")
} else if student2.name != nil && student2.carNumber == nil && student2.gradeForCW == nil {
    print("Student name: \(student2.name!), student doesn't have a car, student was appsent at last Control Work")
} else if student2.name != nil && student2.carNumber != nil && student2.gradeForCW == nil {
print("Student name: \(student2.name!), student car number: \(student2.carNumber!), student was appsent at last Control Work")
} else {
    print("Error: Check Student Card")
}


if student3.name != nil && student3.carNumber != nil && student3.gradeForCW != nil {
    print("Student name: \(student3.name!), student car number: \(student3.carNumber!),grade for last Control Work(If not appsent) \(student3.gradeForCW!) ")
} else if student3.name != nil && student3.carNumber == nil && student3.gradeForCW != nil {
    print("Student name: \(student3.name!), student doesn't have a car,grade for last Control Work(If not appsent) \(student3.gradeForCW!) ")
} else if student3.name != nil && student3.carNumber == nil && student3.gradeForCW == nil {
    print("Student name: \(student3.name!), student doesn't have a car, student was appsent at last Control Work")
} else if student3.name != nil && student3.carNumber != nil && student3.gradeForCW == nil {
print("Student name: \(student3.name!), student car number: \(student3.carNumber!), student was appsent at last Control Work")
} else {
    print("Error: Check Student Card")
}

if student4.name != nil && student4.carNumber != nil && student4.gradeForCW != nil {
    print("Student name: \(student4.name!), student car number: \(student4.carNumber!),grade for last Control Work(If not appsent) \(student3.gradeForCW!) ")
} else if student4.name != nil && student4.carNumber == nil && student4.gradeForCW != nil {
    print("Student name: \(student4.name!), student doesn't have a car,grade for last Control Work(If not appsent) \(student4.gradeForCW!) ")
} else if student4.name != nil && student4.carNumber == nil && student4.gradeForCW == nil {
    print("Student name: \(student4.name!), student doesn't have a car, student was appsent at last Control Work")
} else if student4.name != nil && student4.carNumber != nil && student4.gradeForCW == nil {
print("Student name: \(student4.name!), student car number: \(student4.carNumber!), student was appsent at last Control Work")
} else {
    print("Error: Check Student Card")
}


if student5.name != nil && student5.carNumber != nil && student5.gradeForCW != nil {
    print("Student name: \(student5.name!), student car number: \(student5.carNumber!),grade for last Control Work(If not appsent) \(student5.gradeForCW!) ")
} else if student5.name != nil && student5.carNumber == nil && student5.gradeForCW != nil {
    print("Student name: \(student5.name!), student doesn't have a car,grade for last Control Work(If not appsent) \(student5.gradeForCW!) ")
} else if student5.name != nil && student5.carNumber == nil && student5.gradeForCW == nil {
    print("Student name: \(student5.name!), student doesn't have a car, student was appsent at last Control Work")
} else if student5.name != nil && student5.carNumber != nil && student5.gradeForCW == nil {
print("Student name: \(student5.name!), student car number: \(student5.carNumber!), student was appsent at last Control Work")
} else {
    print("Error: Check Student Card")
}
