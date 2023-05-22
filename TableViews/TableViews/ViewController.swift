//
//  ViewController.swift
//  TableViews
//
//  Created by DA MAC M1 121 on 2023/05/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var TableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TableView.dataSource = self
        TableView.delegate = self
    }

}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.textLabel?.text = "I am a cell"

        return cell
    }
    
}
extension ViewController: UITabBarDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You have clecked row number: \(indexPath.row)")
    }
}

