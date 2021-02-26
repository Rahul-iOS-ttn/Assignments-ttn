//import UIKit



//var str = "Hello, playground"
//
//struct EmployeePersonal {
//    var employeeId: Int
//    var name: String
//    var country: String // this will become the common ID
//    var address: String
//    var hobbies: String?
//    init(_ id: Int, _ name: String, _ country: String, _ address: String, _ hobbies: String ) {
//        self.employeeId = id
//        self.name = name
//        self.country = country
//        self.address = address
//        self.hobbies = hobbies
//    }
//}
//
//struct EmployeeProfessional {
//    var employeeId: Int
//    var name: String
//    var department: String
//    var branch: String // this will become the common ID
//    var experience: Int
//    init(_ id: Int, _ name: String, _ department: String, _ branch: String, _ experience: Int ) {
//        self.employeeId = id
//        self.name = name
//        self.department = department
//        self.branch = branch
//        self.experience = experience
//    }
//}
//var personalEmployees: [EmployeePersonal] = [EmployeePersonal(1, "Rahul", "India", "Delhi", "cricket"),
//                                             EmployeePersonal(2, "Vijendra", "India", "Delhi", "cricket"),
//                                             EmployeePersonal(3, "harsh", "India", "Delhi", "cricket"),
//                                             EmployeePersonal(4, "aryan", "India", "Delhi", "cricket"),
//                                             EmployeePersonal(5, "kavya", "India", "Delhi", "cricket")]
//
//var professionalEmployees: [EmployeeProfessional] = [EmployeeProfessional(1, "Rahul", "iOS", "India", 1),
//                                                     EmployeeProfessional(2, "Vijendra", "android", "India", 1),
//                                                     EmployeeProfessional(3, "harsh", "jvm", "India", 1),
//                                                     EmployeeProfessional(4, "aryan", "fullstack", "India", 1),
//                                                     EmployeeProfessional(5, "kavya", "web", "India", 1)]


//var obj = EmployeeProfessional(employeeId: <#T##Int#>, name: <#T##String#>, department: <#T##String#>, branch: <#T##String#>, experience: <#T##Int#>)

//var obj = EmployeeProfessional(<#T##id: Int##Int#>, <#T##name: String##String#>, <#T##department: String##String#>, <#T##branch: String##String#>, <#T##experience: Int##Int#>)
//struct Employee {
//    var id: Int
//    var personalEmployee: EmployeePersonal
//    var professionalEmployee: EmployeeProfessional
//
//    init(ecid id: Int, personalEmployees: EmployeePersonal, professionalEmployees: EmployeeProfessional) {
//        self.id = id
//        self.personalEmployee = personalEmployees
//        self.professionalEmployee = professionalEmployees
//    }
//
//
//    func displayInformation() {
//        print("employeeId:", self.id)
//        print("name: ", self.personalEmployee.name)
//        print("address: ", self.personalEmployee.address)
//        print("country: ", self.personalEmployee.country)
//        print("hobbies: ", self.personalEmployee.hobbies as Any)
//        print("department: ", self.professionalEmployee.department)
//        print("branch: ", self.professionalEmployee.branch)
//        print("experience: ", self.professionalEmployee.experience)
//        print("\n")
//    }
//}
//
////for (index, item) in professionalEmployees.enumerated() {
////
////}
//
//var employees: [Employee] = []
//
//for item in zip(professionalEmployees, personalEmployees){
////    print(item.0.employeeId)
//    if(item.0.employeeId == item.1.employeeId){
//        employees.append(Employee(ecid: item.0.employeeId, personalEmployees: item.1, professionalEmployees: item.0))
//    }
//}
//
////for personalEmployee in personalEmployees, professionalEmployee in professionalEmployees {
////
////        if personalEmployee.employeeId == professionalEmployee.employeeId {
////            employees.append(Employee(ecid: personalEmployee.employeeId, personalEmployees: personalEmployee, professionalEmployees: professionalEmployee))
////        }
////
////}
//
////personalEmployees.forEach{ personalEmployee in
////    for index in 0..<professionalEmployees.count {
////        if personalEmployee.employeeId == professionalEmployees[index].employeeid {
////            employees.append(Employee(ecid: personalEmployee.employeeId, personalEmployees: personalEmployee, professionalEmployees: professionalEmployee))
////        }
////    }
////}
//
//for employee in employees {
//    employee.displayInformation()
//}
//// TASK number 2
//func employeeList(perosnalE: [EmployeePersonal], professionalE: [EmployeeProfessional], country: String) {
//    var listOfEmployees: [String] = []
//    for item in zip(perosnalE, professionalE) where (country == item.0.country) {
//        listOfEmployees.append(item.0.name)
//    }
//    for name in listOfEmployees{
//        print("\(name) is in \(country)")
//    }
//    print("\n")
//}
//
//var argumentCountry = "India"
//employeeList(perosnalE: personalEmployees, professionalE: professionalEmployees, country: argumentCountry)
//
////TASK 3
//
//func employeeListDepartment(perosnalE: [EmployeePersonal], professionalE: [EmployeeProfessional], department: String) {
//    var listOfEmployees: [String] = []
//    for item in zip(perosnalE, professionalE) where (department == item.1.department){
//        listOfEmployees.append(item.1.name)
//    }
//    for name in listOfEmployees{
//        print("\(name) is in \(department) \n")
//    }
//    print("\n")
//}
//
//var argumentDepartment = "iOS"
//employeeListDepartment(perosnalE: personalEmployees, professionalE: professionalEmployees, department: argumentDepartment)
//
////task 4
//
//func employeeListBranchCountry(perosnalE: [EmployeePersonal], professionalE: [EmployeeProfessional], country: String, branch: String) {
//    var listOfEmployees: [String] = []
//    for item in zip(perosnalE, professionalE) where ((branch == item.1.branch) && (country == item.0.country)) {
//        listOfEmployees.append(item.1.name)
//    }
//    for name in listOfEmployees{
//        print("\(name) is in \(branch) from \(country) \n")
//    }
//    print("\n")
//}
//
//var argumentbranch = "India"
//argumentCountry = "India"
//employeeListBranchCountry(perosnalE: personalEmployees, professionalE: professionalEmployees, country: argumentCountry, branch: argumentbranch)
//
////TASK 5
//
//func employeeListHobbyExperience(perosnalE: [EmployeePersonal], professionalE: [EmployeeProfessional]) {
//    var listOfEmployees = [String: Int]()
//    for item in zip(perosnalE, professionalE) {
//        if(item.0.hobbies != nil)
//        {
////            listOfEmployees.append("item.1.name", item.1.experience)
//            listOfEmployees[item.1.name] = item.1.experience
//        }
//    }
//    dump(listOfEmployees)
//    print("\n")
//}
//
//employeeListHobbyExperience(perosnalE: personalEmployees, professionalE: professionalEmployees)
//
    
//TASK 6
//func employeeNameS(personalE: [EmployeePersonal]) -> [String] {
//    var listOfEmployees: [String] = []
//    for item in personalE{
//        if(item.name[item.name.startIndex] == "S"){
//            listOfEmployees.append(item.name)
//        }
//    }
//    return listOfEmployees
//}
//
//personalEmployees = [EmployeePersonal(6, "Sandhya", "India", "Banglore", "Music")]
//print(employeeNameS(personalE: personalEmployees))

//struct Name {
//    var firstName: String
//    var lastName: String
//    init(fname firstName: String, lname lastName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//    }
//}
//
//var nameObject = Name(fname: "Rahul", lname: "Sharma")
//
//print("The Name is \(nameObject.firstName) \(nameObject.lastName)")


//class Movie {
//    var movieName: String
//    var director: String
//    var rating: Int
//    var publishDate: Int
//
//    init(movieName: String, director: String, rating: Int, publishDate: Int) {
//        self.movieName = movieName
//        self.director = director
//        self.rating = rating
//        self.publishDate = publishDate
//    }
//    convenience init() {
//        self.init(movieName: "American Made", director: "Doug Liman", rating: 7, publishDate: 2017)
//    }
//}
//
//let defauldtMovie = Movie()
//let secondMovie = Movie(movieName: "No Time To Die", director: "Cary Joji Fukunaga", rating: 8, publishDate: 2021)
//
//print(secondMovie.movieName)

//
////Method 1 - variable array storing empty array.
//let array: [Int] = []
//print(array)
//
////Method 2 - using Array function
//let funArray:Array<Int> = Array()
//print(funArray)
//
////Method 3 - static allocation
//let alloc = [1, 2, 3, 4, 5]
//print(alloc)
//
////Method 4 - array containing the specified number of a single repeated value
//let arr = Array(repeating: [1, 2, 3, 4, 5], count: 4)
//print(arr)


//Creating mutable array
//var cityList = ["New York", "Tokyo", "Okinawa", "Seoul", "Delhi"]
//print(cityList)
//
////Adding elements
////Method 1 using append
//cityList.append("Canada")
//
////Method 2 using insert
//cityList.insert("Spain", at: 6)
//cityList.insert("Switzerland", at: 7)
//
//print(cityList)


//Replacement in array
//var repArray = [14, 18, 15, 16, 23, 52, 95]
//print(repArray)
//repArray[2] = 24
//repArray[4] = 48
//print(repArray)

//SETS
//let houseAnimals: Set = ["🐶", "🐱"]
//let farmAnimals: Set = ["🐮", "🐓", "🐑", "🐶", "🐱"]
//let cityAnimals: Set = ["🦜", "🐭"]
//
////question 1 - Determine whether the set of house animals is a subset of farm animals.
//print(houseAnimals.isSubset(of: farmAnimals))
//
////question 2 -Determine whether the set of farm animals is a superset of house animals.
//print(farmAnimals.isSuperset(of: houseAnimals))
//
////question 3 - Determine if the set of farm animals is disjoint with city animals.
//print(farmAnimals.isDisjoint(with: cityAnimals))
//
////question 4 - Create a set that only contains farm animals that are not also house animals.
//print(farmAnimals.subtracting(houseAnimals))
//
////question 5 - Create a set that contains all the animals from all sets.
//let unionSet = houseAnimals.union(farmAnimals).union(cityAnimals)
//print(unionSet)

//DICTIONARIES
//// FOUR WAYS OF CREATINF AN EMPTY DICTIONARY WITH KEY(STRING) AND VALUE(INT) AND ASSIGNING IT TO A VARIABLE
////WAY - 1
//var dictOne: [String:Int] = [:]
//print(dictOne)
//dictOne.updateValue(1, forKey: "One")
//dictOne.updateValue(2, forKey: "Two")
//dictOne.updateValue(3, forKey: "Three")
//print(dictOne)
//
////WAY - 2 dictionary with 2 arrays
//let arrayOne = ["One", "Two", "Three"]
//let arrayTwo = [1, 2, 3]
//let dictTwo = Dictionary(uniqueKeysWithValues: zip(arrayOne, arrayTwo))
//print(dictTwo)
//
////WAY - 3 Declaring it with values
//var dictThree = ["One":1, "Two":2, "Three":3]
//print(dictThree)
//
////WAY - 4 using for-in loop
//let dictFour = ["One":1, "Two":2, "Three":3]
//for (key, value) in dictFour{
//    print("key is \(key) and value is \(value).")
//}

//let secretIdentities: NSDictionary = [
//    "Hulk": "Bruce Banner",
//    "Batman": "Bruce Wayne",
//    "Superman": "Clark Kent"
//]
//
//print(secretIdentities)


//Create a nesters structure of key-value pair.

//struct keyValuPair {
//    var items: [(String, Int)]
//
//    init(_ items: KeyValuePairs<String, Int>) {
//        self.items = Array(items)
//    }
//}
//
//let couple = keyValuPair(["Rahul":1, "Sharma":2, "TTN":3])
//print(couple.items)

//Print all the keys in the dictionary

//var diction: [String:Int] = ["Rahul":1, "Sharma":2, "TTN":3]
//
//for key in diction.keys {
//    print("\(key)")
//}

// Create a simple subscript that outputs true if a string contains a substring and false otherwise.

//let text = "To The New being a great company treats its employees fairly. Great place to work."
//
//let endSentence = text.firstIndex(of: ".")!
//let subString = text[...endSentence]
////let subString = "askjdfbkasudf"
//// Above one will give false.
//
//if endSentence == text.firstIndex(of: ".") && subString == text[...endSentence] {
//    print("True")
//} else {
//    print("False")
//}
//enum NameAlert: Error {
//    case adminName
//}
//
//struct Example {
//    var name: String
//    init(nameArg: String) throws {
//        if nameArg[nameArg.startIndex] == "R" {
//            throw NameAlert.adminName
//        }
//        self.name = nameArg
//    }
//}
//
//do {
//    let finalName = try Example(nameArg: "Rahul")
////    let finalName = try Example(nameArg: "ToTheNew")
//    finalName.name
//} catch NameAlert.adminName {
//    print("This is example is by Rahul Sharma")
//}

//SWIFT INTERMEDIATE ASSIGNMENT


