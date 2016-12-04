//
//  Users.swift
//  FInalDemoProject
//
//  Created by vikassrivastava on 03/12/16.
//  Copyright © 2016 vikassrivastava. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
class userName {
    
    var name = String()
    var email = String()
    
    init(userJson:JSON) {
        name = userJson["name"].stringValue
        email = userJson["email"].stringValue
        
    }
    
    
}
