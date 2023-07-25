


func firstScreen(people: [Person]?) {
    print("------------------------")
    print("개발자 채용 시장에 오신것을 환영합니다")
    print("------------------------")
    print("[개발자 목록]")
    if let people = people, !people.isEmpty {
        for(index,person) in people.enumerated() {
            print("\(index+1).\(person.name)")
        }
        
      
        if let input = readLine(), let selectedIndex = Int(input), selectedIndex > 0, selectedIndex <= people.count {
            let selectedDeveloper = people[selectedIndex - 1]
            // New: Call the secondScreen function and pass the selected developer
            secondScreen(people: [selectedDeveloper])
        } else {
            print("Invalid input. Please enter a valid number.")
        }
        
        
    } else {
        print("현재 지원중인 개발자가 없습니다...🥲")
    }
    print("[Recruitment Menu]")
}

func secondScreen(people:[Person]?){
    if let people = people, !people.isEmpty{
        for person in people {
                 print("""
                       [\(person.name)님의 상세페이지]
                        DreamCar:  \(person.dreamCar)
                        DreamHoues: \(person.dreamHouse)
                        희망연봉 : \(person.salary)
                       """)
                 
        }
    }else {
        
    }
    
    print("")
    
}

let people: [Person] = [
    Person(name: "김귀아", dreamCar: "Porsche Cayenne", dreamHouse: "PH129", salary: 60000000),
    Person(name: "박인수", dreamCar: "Morning", dreamHouse: "PH129", salary: 1000000000)
]

firstScreen(people: people)

//test log
