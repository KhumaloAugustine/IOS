//
//  ViewController.swift
//  TableSession
//
//  Created by DA MAC M1 144 on 2023/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        tableView.dataSource = self
        tableView.delegate = self
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


extension ViewController:UITableViewDataSource, UITableViewDelegate{
    func tableView( _ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView( _ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell=tableView.dequeueReusableCell(withIdentifier: "CustomCell", for:indexPath)as?CustomCell else{return UITableViewCell()}
        cell.nameLabel.text="Me Now "
        cell.surnameLabel.text="Doing it!"
        cell.emailLabel.text="ididit@gmail.com"
        cell.profileImage.image=UIImage(systemName: "person.circle.fill")
        return cell
    }

}
