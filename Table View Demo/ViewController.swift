//
//  ViewController.swift
//  Table View Demo
//
//  Created by Peisure on 1/12/18.
//  Copyright © 2018 Ben. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var inputField: UITextField!
    @IBOutlet var tableP: UITableView!
    var tasks: [String]=[]
    @IBAction func buttonPressed(_ sender: Any) {
        tasks.append(inputField.text!)
        tableP.reloadData()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableP.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
        // return an integer that indicates how many rows (cells) to draw
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Get the UITableViewCell and create/populate it with data then return it
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        cell.textLabel?.text = tasks[indexPath.row]
        return cell
    }
}

