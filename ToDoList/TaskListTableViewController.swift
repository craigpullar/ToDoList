//
//  TaskListTableViewController.swift
//  ToDoList
//
//  Created by Craig Pullar on 03/07/2014.
//  Copyright (c) 2014 Craig Pullar. All rights reserved.
//

import Foundation
import UIKIt


@objc(TaskListTableViewController) class TaskListTableViewController: UITableViewController {
    
    var taskList: Task[] = [];
    var completedList : Task[] = []
    
    //NAVIGATION FUNCTIONS
    @IBAction func unwindToList(segue:UIStoryboardSegue) {
        var source : AddTaskViewController = segue.sourceViewController as AddTaskViewController
        var taskToAdd : Task = source.task
        if (taskToAdd != nil) {
            self.taskList.append(taskToAdd)
            self.tableView.reloadData()
        }
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        
    }
    
    //CORE DATA FUNCTIONS
    func saveTask(task : Task) {
        
    }
    
    //DATA FUNCTIONS
    func generateTasks() {
        var task: Task = Task(name: "iPhone Development");
        self.taskList.append(task);
        task = Task(name: "Read");
        self.taskList.append(task);
    }
    override func viewDidLoad() {
        self.generateTasks();
    }
    override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return taskList.count;
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        return 1;
    }
    
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var cellIdentifier: String = "ListPrototypeCell";
        var cell : UITableViewCell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as UITableViewCell;
        
        //Add text to cell
        var task : Task = self.taskList[indexPath.row];
        cell.text = task.getName();
        return cell;
    }
    
    override func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        
        tableView.deselectRowAtIndexPath(indexPath, animated: false)//Deselect cell
        //tableView.beginUpdates()
        var selectedTask : Task = self.taskList[indexPath.row]//get selected task
        selectedTask.complete()//complete task
        self.completedList.append(selectedTask)
        self.taskList.removeAtIndex(indexPath.row)
        
        tableView.reloadData()
        
    }
    
}