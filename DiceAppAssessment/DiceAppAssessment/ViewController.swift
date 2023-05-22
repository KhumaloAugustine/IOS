
  //ViewController.swift
  //DiceAppAssessment

 // Created by DA MAC M1 121 on 2023/05/22.


import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var rightimage: UIImageView!
    @IBOutlet weak var leftimage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    let imageLiterals = [#imageLiteral(resourceName: "1"), #imageLiteral(resourceName: "2"), #imageLiteral(resourceName: "3"), #imageLiteral(resourceName: "4"), #imageLiteral(resourceName: "5"), #imageLiteral(resourceName: "6")]


    @IBAction func buttonPressed(_ sender: Any) {
        // Generate random indices within the range of the image literals array
        let leftRandomIndex = Int.random(in: 0..<imageLiterals.count)
        let rightRandomIndex = Int.random(in: 0..<imageLiterals.count)

        // Set the left image to the randomly selected image literal
        leftimage.image = imageLiterals[leftRandomIndex]

        // Set the right image to the randomly selected image literal
        rightimage.image = imageLiterals[rightRandomIndex]
    }



}

