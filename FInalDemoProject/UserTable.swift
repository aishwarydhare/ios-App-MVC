//
//  UserTable.swift
//  FInalDemoProject
//
//  Created by vikassrivastava on 03/12/16.
//  Copyright © 2016 vikassrivastava. All rights reserved.
//

import UIKit

class UserTable: UITableView ,UITableViewDataSource,UITableViewDelegate{
    
    var userArray = [userName]()
        {
       didSet
       {
        
       self.reloadData()
        
        }
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override func awakeFromNib() {
        self.delegate = self
        self.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:UserTableViewCell = tableView.dequeueReusableCell(withIdentifier: "usercell", for: indexPath) as! UserTableViewCell
        let singleUser = userArray[indexPath.row]
        
        cell.lblEmail.text = singleUser.email
        cell.lblName.text = singleUser.name
        
        
        return cell
    }
    
}
