//
//  DetailVC.swift
//  CustomCellRestar
//
//  Created by IgorMac on 3/14/18.
//  Copyright © 2018 IgorMac. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var detailImage: UIImageView!
    
    @IBOutlet weak var lblDetailImage: UITextView!
    
    var imageName: String!
    var lblTextName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailImage.image = UIImage(named: self.imageName)
     //  lblDetailImage.text! = UITextView(named: self.lblTextName)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func comminInit(_ imageName: String, title: String, sub: String) {
        self.imageName = imageName
        self.title = title
        self.lblTextName = sub
    }
}
