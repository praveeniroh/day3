import Cocoa

//Day 3
//Arrays

let marks = [65,76,98] // array of Int
let temperatures = [31.2,43.2,65.4]// array of Double

//print(names[0])

var names = ["raj","kumar","praveen"] // array of strings
//append -> adding at last
names.append("kavin")
//names.append(10) // error -> type safe

names.insert("pgp", at: 2)
names
names.insert(contentsOf: ["uzi","mp5"], at: 2)
names

names = ["raj","kumar","praveen"]
names.remove(at: 1)
print(names)
print(names.count)
names.removeAll()
print(names.count)

names = ["raj","kumar","praveen"]
print(names.contains("erode"))
print(names.count)
print(names.sorted())
print(names.sorted(by: >))
let reversedArray = names.reversed()
print(reversedArray)// ReversedCollection<Array<String> -> doesn't create new memory
names.removeLast()
names.removeFirst()
names.removeLast()
names.removeAll()
//names.removeAll(where:)
print(reversedArray.reversed())
for i  in stride(from: 0, to: 10, by: 3){
    print(i,terminator: " ")
}


//Dictionary
let person = [
    "name" : "iroh",
    "place" : "erode",
    "job" : "farmer"
]

print(person["name"])
print(person["age"])//not valid key -> returns nil
print(person["age",default: "No key found"])

var person1:[String:String?] = [
    "name" : "iroh",
    "place" : "erode",
    "job" : nil
]
print(person1["job",default: "No key found"])// key found so default value is not taken
person1["job"] = nil
person1["job"]

var marksDictionary = [String:Float]()
marksDictionary["raj"] = 55
marksDictionary["kumar"] = 87.43
marksDictionary
marksDictionary["raj"] = 76.4//key already found. so overrides existing value
marksDictionary

var dictionary = ["b": 2, "a": 1, "c": 3]
dictionary["d"] = 4
dictionary.updateValue(5, forKey: "e")
print(dictionary)

dictionary = ["b": 2, "a": 1, "c": 3]
dictionary.removeValue(forKey: "c")
print(dictionary)
dictionary["a"] = nil
//dictionary.remove(at:)
print(dictionary)
dictionary.removeAll()
print(dictionary)


//set
let set = Set(["Raj","kumar","praveen"])//stores uique values & removes duplicates automatically

var set2 = Set<Int>()
set2.insert(2)
set2.insert(2)
set2.insert(3)
set2.insert(4)
set2.update(with: 7)
set2
set2 = Set([2,1,7,9])
set2.remove(2)
set2.remove(5)
set2.removeFirst()
set2.removeAll()

var ordSet = NSOrderedSet(array: [1,2,4])


///types : nsorderredSet, NSMutableOrderredSet,NSCountedSet

///Enum-> providing of all possible values
