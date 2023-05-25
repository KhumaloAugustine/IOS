//
//  ToDOTableViewCell.swift
//  Models
//
//  Created by DA MAC M1 121 on 2023/05/24.
//

import UIKit

class ToDOTableViewCell: UITableViewCell {

    @IBOutlet weak var itleLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
