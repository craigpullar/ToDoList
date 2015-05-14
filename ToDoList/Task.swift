//
//  Task.swift
//  ToDoList
//
//  Created by Craig Pullar on 18/06/2014.
//  Copyright (c) 2014 Craig Pullar. All rights reserved.
//

import Foundation

class Task {
    
    //DECLARE
    var name: String
    var completed: Bool

    
    init(name: String, completed : Bool = false) {
        self.name = name
        self.completed = completed
    }
    
    //METHODS
    func complete() {
        self.setcompleted(true)
    }

    
    
    //GETS & SETS
    func getName() -> String {
        return self.name
    }
    
    func setName(newName : String) {
        self.name = newName
    }
    
    func isCompleted() ->Bool {
        return self.completed
    }
    
    func setcompleted(status : Bool) {
        self.completed = status
    }

}
