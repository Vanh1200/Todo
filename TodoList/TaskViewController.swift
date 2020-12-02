//
//  TaskViewController.swift
//  TodoList
//
//  Created by Kieu Viet Anh on 01/12/2020.
//

import UIKit

class TaskViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    var task: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = task
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Delete", style: .done, target: self, action: #selector(deleteTask))
    }
    
    @objc func deleteTask() {
//        let newCount = count - 1
//        UserDefaults.standard.setValue(newCount, forKey: "count")
//        UserDefaults.standard.setValue(nil, forKey: "task_\(currentPosition)")
    }

}
