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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addTapped(_ sender: Any) {
         // Create a Task from the Outlets //
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
         // Pop Back //
        
       navigationController!.popViewController(animated: true)
    }
    
    
}
