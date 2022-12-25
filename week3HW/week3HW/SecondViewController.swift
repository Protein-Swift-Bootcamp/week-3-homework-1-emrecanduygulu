//
//  SecondViewController.swift
//  week3HW
//
//  Created by emre can duygulu on 23.12.2022.
//

import UIKit

class SecondViewController: UITableViewController, ToDoDelegate {
    let sb = UIStoryboard(name: "Main", bundle: nil)
    var firstVC = ViewController()
    
    var toDoArray: [String] = []
    func addToArray(toDos: String) {
        toDoArray.append(toDos)
        tableView.reloadData()
        firstVC.dismiss(animated: true)
    }
    
    @IBOutlet var table: UITableView!
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = toDoArray[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoArray.count
    }
    
    @IBAction func toAddScreen(_ sender: Any) {
        self.present(firstVC, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "To Do List"
        firstVC = storyboard?.instantiateViewController(withIdentifier: "addScreen") as! ViewController
        firstVC.delegate = self
    }
}
