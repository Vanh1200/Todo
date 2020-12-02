//
//  EntryViewController.swift
//  TodoList
//
//  Created by Kieu Viet Anh on 01/12/2020.
//

import UIKit

class EntryViewController: UIViewController {

    @IBOutlet var field: UITextField!
    
    var update: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        field.delegate = self
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(saveTask))
    }
    
    @objc func saveTask(){
        guard let text = field.text, !text.isEmpty else { return }
        let count = UserDefaults().value(forKey: "count") as? Int ?? 0
        let newCount = count + 1
        UserDefaults.standard.set(newCount, forKey: "count")
        UserDefaults.standard.set(text, forKey: "task_\(newCount)")
        update?()
        navigationController?.popViewController(animated: true)
    }
}

extension EntryViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        saveTask()
        return true
    }
}
