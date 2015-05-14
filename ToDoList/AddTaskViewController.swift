//
//  AddTaskViewController.swift
//  ToDoList
//
//  Created by Craig Pullar on 18/06/2014.
//  Copyright (c) 2014 Craig Pullar. All rights reserved.
//

import Foundation
import UIKit
class AddTaskViewController : UIViewController {

    
    @IBOutlet var textField : UITextField
    @IBOutlet var doneButton : UIBarButtonItem
    var task : Task = Task(name:"INIT")

    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        
        if (sender as? NSObject != self.doneButton) {
          return;
        }
        if (textField.text.utf16count > 0) {
            self.task.setName(textField.text)
        }
    }
}