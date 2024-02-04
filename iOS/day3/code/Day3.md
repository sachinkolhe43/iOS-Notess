# set

var s1: Set<Int> = [10, 20, 30, 40, 50, 10]
var s2: Set<Int> = [50, 60, 70, 80]
// print(s1.intersection(s2))
// print(s1.subtracting(s2))

for value in s1 {
  print(value)
}

# Dictionary


let person: Dictionary<String,Any> = [

  "Name" : "Sachin",
  "Age": 23,
  "Email":"sachin@test.com"
]

if let name = person["Name"]{
  print("name = \(name)")
}

if let age = person["Age"]{
    print("age = \(age)")
}

# Function

func function1(){
    print("inside main fun")
    print("type = \(type(of: function1))")
    func innerFun(){
        print("Inside Inner Fun")
        print("type = \(type(of: innerFun))")
    }
    
    var function = innerFun
    function()
    innerFun()
}