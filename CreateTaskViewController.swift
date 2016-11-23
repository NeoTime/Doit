//
//  CreateTaskViewController.swift
//  Doit
//
//  Created by Jefferey Rigler on 11/20/16.
//  Copyright © 2016 RiglerDigital. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {
    
    @IBOutlet weak var taskNameTextField: UITextField!

    @IBOutlet weak var importantSwitch: UISwitch!
    
    var previousVC = TasksViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addTapped(_ sender: Any) {
         // Create a Task from the Outlets //
        
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
         // Add new task to the list -previous viewController //
        
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        
        navigationController!.popViewController(animated: true)
    }
    
    
}
