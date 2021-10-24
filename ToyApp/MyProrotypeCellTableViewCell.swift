//
//  MyProrotypeCellTableViewCell.swift
//  ToyApp
//
//  Created by Valentina on 24.10.2021.
//

import UIKit

class MyProrotypeCellTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBOutlet weak var cellTitle: UILabel!
    
    @IBOutlet weak var subtitle: UILabel!
}
