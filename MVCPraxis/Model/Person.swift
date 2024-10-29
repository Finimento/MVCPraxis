//
//  Person.swift
//  MVCPraxis
//
//  Created by Mike Finimento on 29.10.24.
//

import Foundation

class Person {
    
    var nachname: String
    var vorname: String
    
    init(nachname: String, vorname: String) {
        self.nachname = nachname
        self.vorname = vorname
    }
    
    static func loadPersons() -> [Person]{
        var personsArray = [Person]()
        
        personsArray.append(Person(nachname: "Friedrichson", vorname: "Franz"))
        personsArray.append(Person(nachname: "Giesinger", vorname: "Josef"))
        personsArray.append(Person(nachname: "Kira", vorname: "Bundspecht"))
        return personsArray
    }
    
}
