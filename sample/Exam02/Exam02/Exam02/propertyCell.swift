//
//  propertyCell.swift
//  Exam02
//
//  Created by Maheshwar Punyam Anand on 1/13/24.
//

import UIKit

class propertyCell: UITableViewCell {

    @IBOutlet weak var ImageIV: UIImageView!
    
    @IBOutlet weak var textLBL: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
