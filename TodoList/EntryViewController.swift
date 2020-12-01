//
//  EntryViewController.swift
//  TodoList
//
//  Created by Kieu Viet Anh on 01/12/2020.
//

import UIKit

class EntryViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var field: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        field.delegate = self
    }
    
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        saveTask()
        return true
    }
    
    @IBAction func saveTask(){
        
    }
}
