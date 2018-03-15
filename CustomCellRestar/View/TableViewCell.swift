//
//  TableViewCell.swift
//  CustomCellRestar
//
//  Created by IgorMac on 3/14/18.
//  Copyright © 2018 IgorMac. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var logoImage: UIImageView!
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblSubName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func comminInit (_ image: String, title: String , sub: String) {
        logoImage.image = UIImage(named: image)
        lblName.text = title
        lblSubName.text = sub
    }
    
}
