//
//  ViewController.swift
//  FInalDemoProject
//
//  Created by vikassrivastava on 03/12/16.
//  Copyright © 2016 vikassrivastava. All rights reserved.
//

import UIKit
import SwiftyJSON
class ViewController: UIViewController {

    @IBOutlet weak var userTable: UserTable!
    var UserArray = [userName]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        usersFetchData()
    }
    func usersFetchData() {
        
        ApiManager.sharedInstance.fetchUsers { (responseValue) in
            
            if responseValue != nil
            {
                
                
                for i in 0..<responseValue.count
                {
                    let singleUser = userName(userJson: responseValue[i])
                    self.UserArray.append(singleUser)
                    
                    print(singleUser.name)
                }
                self.userTable.userArray = self.UserArray
                
            }
            else
            {
                
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

