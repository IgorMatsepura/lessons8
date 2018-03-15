//
//  ViewController.swift
//  CustomCellRestar
//
//  Created by IgorMac on 3/14/18.
//  Copyright © 2018 IgorMac. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var restarauntData = ["Bare bones" , "The Puns" , "The Dairy Godmother", "The Dairy Godmother", "Lettuce B. Frank", "Kings", "Cesar" ,"Bingo"]
    
    let nameData = ["Saratoga, NY", "Alexandria, VA", "Atlanta, GA", "Dover, NH", "Milan", "Madrid", "Paris", "Toronto"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Restaurants"
        tableView.dataSource = self
        tableView.delegate = self
        
        let nibName = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "tableViewCell")
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restarauntData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as! TableViewCell
        cell.comminInit("pexels_\(indexPath.item)", title: restarauntData[indexPath.item], sub: nameData[indexPath.item])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 86
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailVC()
        vc.comminInit("pexels_\(indexPath.item)", title: restarauntData[indexPath.item], sub: nameData[indexPath.item])
        self.navigationController?.pushViewController(vc, animated: true)
        self.tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            restarauntData.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}





