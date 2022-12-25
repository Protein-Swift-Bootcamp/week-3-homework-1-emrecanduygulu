//
//  ViewController.swift
//  week3HW
//
//  Created by emre can duygulu on 22.12.2022.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var delegate: ToDoDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func addButton(_ sender: UIButton) {
        guard
            let textFieldValue = textField.text,
            !textFieldValue.isEmpty
        else { return }
        delegate?.addToArray(toDos: textFieldValue)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        textField.text = ""
    }
}
